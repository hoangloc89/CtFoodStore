/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.entities;

import javax.persistence.*;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author DIENMAYXANH
 */
@Entity
@Table(name = "images")
public class ImageEntity {
   @Id
   private int id;
   private String name;
   @Transient
   private MultipartFile file;
   @ManyToOne
   @JoinColumn(name = "product_id")
   private ProductEntity product;

    public ImageEntity() {
    }

   
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public ProductEntity getProduct() {
        return product;
    }

    public void setProduct(ProductEntity product) {
        this.product = product;
    }
    
}
