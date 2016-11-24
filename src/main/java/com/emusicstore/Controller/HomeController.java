package com.emusicstore.Controller;

import com.emusicstore.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

/**
 * Created by rayhan on 11/23/16.
 */

@Controller
public class HomeController {

    ProductDao productDao = new ProductDao();

    @RequestMapping("/")
    public String home(){
        return "home";
    }


    @RequestMapping("/Productlist")
    public String getAllProducts(Model model){

        List<Product> products = productDao.getProductList();

        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/Productlist/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException{

        Product product = productDao.getProductById(productId);

        model.addAttribute(product);

        return "viewProduct";
    }
}
