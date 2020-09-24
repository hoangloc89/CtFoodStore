/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.repositories;

import com.ivt.spring.jv34_spring_project_ctfood.entities.CategoryEntity;
import com.ivt.spring.jv34_spring_project_ctfood.entities.ProductEntity;
import java.io.Serializable;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author DIENMAYXANH
 */
@Repository
public interface ProductRepository extends CrudRepository<ProductEntity, String> {

    public List<ProductEntity> findByCategory(CategoryEntity category);

    @Query(value = "SELECT * FROM product order by price limit 4", nativeQuery = true)
    public List<ProductEntity> findProductLimit();

    @Query(value = "SELECT * FROM product join category on product.category_id = category.id where category.category_name like 'spaghetty%' order by price limit 4;", nativeQuery = true)
    public List<ProductEntity> findProductInSpahetty();

    @Query(value = "SELECT * FROM product join category on product.category_id = category.id where category.category_name like 'oil%' order by price limit 4;", nativeQuery = true)
    public List<ProductEntity> findProductInOil();

    @Query(value = "SELECT * FROM product join category on product.category_id = category.id where category.category_name like 'canned%' order by price limit 4;", nativeQuery = true)
    public List<ProductEntity> findProductInCanned();
}
