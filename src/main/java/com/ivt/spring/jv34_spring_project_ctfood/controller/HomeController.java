
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.controller;

import com.ivt.spring.jv34_spring_project_ctfood.entities.OrderDetailEntity;
import com.ivt.spring.jv34_spring_project_ctfood.entities.OrderEntity;
import com.ivt.spring.jv34_spring_project_ctfood.entities.ProductEntity;
import com.ivt.spring.jv34_spring_project_ctfood.service.CategoryService;
import com.ivt.spring.jv34_spring_project_ctfood.service.ProductService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author AnhLe
 */
@Controller
public class HomeController {
@Autowired
private CategoryService categoryService;
@Autowired
private ProductService productService;
        
    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String viewHome(HttpSession session, Model model, @RequestParam(value = "message", required = false) String message,
            @RequestParam(value = "status", required = false) String status) {
        model.addAttribute("categories", categoryService.listAllCategory());
        model.addAttribute("spaghetties",productService.findProductInSpaghetty());
        model.addAttribute("oils", productService.findProductInOilsAndOlive());
        model.addAttribute("canneds", productService.findProductInCannedFood());
        return "home-template";
    }
    @RequestMapping("/product-detail/{productId}")
    public String viewProductDetail(Model model, @PathVariable("productId")String code){
        model.addAttribute("categories", categoryService.listAllCategory());
        model.addAttribute("product", productService.findProductByCode(code));
        model.addAttribute("productsRelated", productService.findProductByCategory(productService.findProductByCode(code).getCategory()));
        return "product-detail";
    }
    @RequestMapping("/checkOut")
    public String viewCart(Model model, HttpServletRequest request){
        model.addAttribute("categories", categoryService.listAllCategory());
        return "checkout";
    }
    @RequestMapping("/searchByCategory/{categoryName}")
    public String productByCategory(Model model, @PathVariable("categoryName") String name){
        model.addAttribute("categories", categoryService.listAllCategory());
        model.addAttribute("productsByCategory", productService.findProductByCategory(categoryService.findCategoryByName(name)));
        return "product";
    }
    @RequestMapping("/login")
    public String viewLogin(Model model,
            @RequestParam(value = "error", required = false) boolean isError) {
        if (isError) {
            model.addAttribute("message", "login fail.");
        }
        return "login";
    }
}
