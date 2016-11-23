package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by rayhan on 11/23/16.
 */
public class ProductDao {
    private List<Product> productList;

    public List<Product> getProductList(){
        Product product1 = new Product();

        product1.setProductName("Guiter1");
        product1.setProductCategory("Instrument");
        product1.setProductDescription("This is a special guiter.");
        product1.setProductPrice(1200);
        product1.setProductCondition("new");
        product1.setProductStatus("active");
        product1.setUnitinStack(11);
        product1.setProductManufacturer("raihan");

        productList = new ArrayList<Product>();
        productList.add(product1);

        return productList;


    }
}
