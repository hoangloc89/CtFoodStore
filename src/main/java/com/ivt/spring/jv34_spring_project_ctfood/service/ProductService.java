/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.service;

import com.ivt.spring.jv34_spring_project_ctfood.entities.CategoryEntity;
import com.ivt.spring.jv34_spring_project_ctfood.entities.ProductEntity;
import com.ivt.spring.jv34_spring_project_ctfood.repositories.ProductRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author DIENMAYXANH
 */
@Service
public class ProductService {
   @Autowired
   private ProductRepository productRepository;
   
   public ProductEntity findProductByCode(String code){
       return productRepository.findOne(code);
   }
   
   public List<ProductEntity> listAllProduct(){
       return (List<ProductEntity>) productRepository.findAll();
   }
   
   public List<ProductEntity> findProductByCategory(CategoryEntity category){
       return productRepository.findByCategory(category);
   }
     public List<ProductEntity> findProductInSpaghetty(){
       return productRepository.findProductInSpahetty();
   }
     public List<ProductEntity> findProductInCannedFood(){
       return productRepository.findProductInCanned();
   }
   public List<ProductEntity> findProductInOilsAndOlive(){
       return productRepository.findProductInOil();
   }
   public List<ProductEntity> listProductLimit(){
       return productRepository.findProductLimit();
   }
}
