/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.service;

import com.ivt.spring.jv34_spring_project_ctfood.entities.CategoryEntity;
import com.ivt.spring.jv34_spring_project_ctfood.repositories.CategoryRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author DIENMAYXANH
 */
@Service
public class CategoryService {
  @Autowired
  private CategoryRepository categoryRepository;
  
  public List<CategoryEntity> listAllCategory(){
      return (List<CategoryEntity>) categoryRepository.findAll();
  }
  
  public CategoryEntity findCategoryByName(String name){
      return categoryRepository.findByName(name);
  }
}
