/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.repositories;

import com.ivt.spring.jv34_spring_project_ctfood.entities.CategoryEntity;
import java.io.Serializable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author DIENMAYXANH
 */
@Repository
public interface CategoryRepository extends CrudRepository<CategoryEntity, Integer>{
   public CategoryEntity findByName(String categoryName); 
}
