/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.service;

import com.ivt.spring.jv34_spring_project_ctfood.entities.ImageEntity;
import com.ivt.spring.jv34_spring_project_ctfood.entities.ProductEntity;
import com.ivt.spring.jv34_spring_project_ctfood.repositories.ImageRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author DIENMAYXANH
 */
@Service
public class ImageService {
 @Autowired
 private ImageRepository imageRepository;
 
 public List<ImageEntity> findImageByProduct(ProductEntity product){
     return imageRepository.findImageByProduct(product);
 } 
}
