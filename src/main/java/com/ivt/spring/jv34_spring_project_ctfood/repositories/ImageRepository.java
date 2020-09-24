/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.repositories;

import com.ivt.spring.jv34_spring_project_ctfood.entities.ImageEntity;
import com.ivt.spring.jv34_spring_project_ctfood.entities.ProductEntity;
import java.io.Serializable;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author DIENMAYXANH
 */
@Repository
public interface ImageRepository extends CrudRepository<ImageEntity, Integer>{
   public List<ImageEntity> findImageByProduct(ProductEntity product);
}
