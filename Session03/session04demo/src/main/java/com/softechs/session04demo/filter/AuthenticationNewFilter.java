/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.softechs.session04demo.filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author TAI
 */
@WebFilter(filterName = "AuthenticationNewFilter", urlPatterns = {"/*"})
public class AuthenticationNewFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        Throwable problem = null;
        try {
            System.out.println("in authentication filter");
            HttpServletRequest hsr = (HttpServletRequest) request;
            if (hsr.getRequestURI().contains("Login")) {
                chain.doFilter(request, response);
            } else {
                HttpSession session = hsr.getSession();
                if (session.getAttribute("username") != null) {
                    chain.doFilter(request, response);
                } else {
                    RequestDispatcher rd = hsr.getRequestDispatcher("LoginServlet");
                    rd.forward(request, response);
                }
            }
        } catch (Throwable t) {
            // If an exception is thrown somewhere down the filter chain,
            // we still want to execute our after processing, and then
            // rethrow the problem after that.
            problem = t;
            t.printStackTrace();
        }

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
}
