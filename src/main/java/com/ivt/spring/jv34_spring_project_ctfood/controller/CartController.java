///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.ivt.spring.jv34_spring_project_ctfood.controller;
//
//import com.ivt.spring.jv34_spring_project_ctfood.entities.OrderDetailEntity;
//import com.ivt.spring.jv34_spring_project_ctfood.entities.OrderEntity;
//import com.ivt.spring.jv34_spring_project_ctfood.entities.ProductEntity;
//import com.ivt.spring.jv34_spring_project_ctfood.service.CategoryService;
//import com.ivt.spring.jv34_spring_project_ctfood.service.ProductService;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//
///**
// *
// * @author DIENMAYXANH
// */
//@Controller
//@RequestMapping("/Cart")
//public class CartController {
//    @Autowired
//    ProductService productService;
//    @Autowired
//    CategoryService categoryService;
//     @RequestMapping("/addCart/{productId}")
//    public String addCart(Model model, HttpServletRequest request, HttpSession session, @PathVariable("productId") String code){
//    ProductEntity product = productService.findProductByCode(code);
//    OrderEntity cart = (OrderEntity) session.getAttribute("cart");
//    if(product != null){
//        if(cart == null){
//            cart = new OrderEntity();
//            List<OrderDetailEntity> cartItem = new ArrayList<>();
//            OrderDetailEntity item = new OrderDetailEntity();
//            item.setQuantity(1);
//            item.setProduct(product);
//            item.setUnitPrice(product.getPrice()-product.getDiscountAmount());
//            item.setOrder(cart);
//            
//            cartItem.add(item);
//            cart.setOrderDetails(cartItem);
//            cart.setTotalAmount(item.getAmount());
//        } else {
//            List<OrderDetailEntity> cartItem = cart.getOrderDetails();
//            if(!cartItem.isEmpty()){
////                if product is exist in your cart, add quantity by 1
//                boolean isExist = false;
//                for(OrderDetailEntity detail : cartItem){
//                    if(detail.getProduct().getId().equals(product.getId())){
//                     int quantity = detail.getQuantity()+1;
//                     detail.setQuantity(quantity);
//                     isExist = true;
//                     break;
//                    }
//                }
////            if product is not exist in cart, create new item with quantity is 1  
//                if(!isExist){
//                    OrderDetailEntity item = new OrderDetailEntity();
//                    item.setProduct(product);
//                    item.setQuantity(1);
//                    item.setOrder(cart);
//                    cartItem.add(item);
//                }
//                
//            }
////            if cartItem is empty, create new item with quantity is 1
//            else{
//                OrderDetailEntity item = new OrderDetailEntity();
//                item.setProduct(product);
//                item.setQuantity(1);
//                item.setOrder(cart);
//                cartItem.add(item);
//            }
//            cart.setOrderDetails(cartItem);
//            cart.setOrderDate(new Date());
//            session.setAttribute("cart", cart);
//        }
//    } else {
//        model.addAttribute("message", "Have error, please check again");
//    }
//    
//        return "redirect:" + request.getHeader("Referer");   
//    }
//
//}
