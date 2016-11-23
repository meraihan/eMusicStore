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
        product1.setProductPrice(1000);
        product1.setProductCondition("new");
        product1.setProductStatus("active");
        product1.setUnitinStack(11);
        product1.setProductManufacturer("raihan");

        Product product2 = new Product();
        product2.setProductName("Piano");
        product2.setProductCategory("Instrument");
        product2.setProductDescription("This is a special piano.");
        product2.setProductPrice(2500);
        product2.setProductCondition("old");
        product2.setProductStatus("active");
        product2.setUnitinStack(11);
        product2.setProductManufacturer("noman");

        Product product3 = new Product();
        product3.setProductName("Drums");
        product3.setProductCategory("Instrument");
        product3.setProductDescription("This is a special drums.");
        product3.setProductPrice(3000);
        product3.setProductCondition("sack");
        product3.setProductStatus("active");
        product3.setUnitinStack(11);
        product3.setProductManufacturer("masum");

        Product product4 = new Product();
        product4.setProductName("flute");
        product4.setProductCategory("Instrument");
        product4.setProductDescription("This is a special flute.");
        product4.setProductPrice(4000);
        product4.setProductCondition("masterpiece");
        product4.setProductStatus("active");
        product4.setUnitinStack(11);
        product4.setProductManufacturer("shihab");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
        productList.add(product4);

        return productList;


    }
}
