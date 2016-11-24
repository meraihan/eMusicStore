package com.emusicstore.dao.impl;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import javax.management.Query;
import java.util.List;

/**
 * Created by rayhan on 11/24/16.
 */

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {


    @Autowired
    private SessionFactory sessionFactory;

    public void addProduct(Product product){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public Product getProductById(String id){
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);

        return product;
    }
    public List<Product> getAllProducts(){
        Session session = sessionFactory.getCurrentSession();
        String sql = "from Product";
        Query query = (Query) session.createQuery(sql);
        List<Product> products = query.list();
        session.flush();
        return products;
    }

    public void deleteProduct(String id){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }

}
