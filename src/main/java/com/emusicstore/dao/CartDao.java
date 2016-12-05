package com.emusicstore.dao;

import com.emusicstore.model.Cart;

/**
 * Created by rayhan on 12/5/16.
 */
public interface CartDao {

    Cart create(Cart cart);

    Cart read(String cartId);

    void update(String cartId, Cart cart);

    void delete(String cartId);
}
