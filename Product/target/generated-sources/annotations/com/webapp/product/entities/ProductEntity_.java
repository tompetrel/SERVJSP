package com.webapp.product.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-07-29T09:38:07")
@StaticMetamodel(ProductEntity.class)
public class ProductEntity_ { 

    public static volatile SingularAttribute<ProductEntity, Integer> quantity;
    public static volatile SingularAttribute<ProductEntity, Integer> productId;
    public static volatile SingularAttribute<ProductEntity, String> name;
    public static volatile SingularAttribute<ProductEntity, String> description;
    public static volatile SingularAttribute<ProductEntity, Double> unitprice;
    public static volatile SingularAttribute<ProductEntity, String> manufacturer;

}