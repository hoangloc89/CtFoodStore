/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.entities;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;
import javax.persistence.*;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author DIENMAYXANH
 */
@Entity
@Table(name = "product")
public class ProductEntity implements Serializable {
   @Id
   @Column(name = "code")
   private String id;
   @Column(name = "product_name")
   private String name;
   @Column(name = "description")
   private String description;
   private Double price;
   @Column (name = "production_date")
   @Temporal(TemporalType.DATE)
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date productionDate;
   @Column (name = "expiry_date")
   @Temporal(TemporalType.DATE)
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date expiryDate;
   @Column(name = "origin_country")
   private String country;
   private Double weight;
   private String packing;
   @Column(name = "stock_quantity")
   private Integer stock;
   
   @ManyToOne
   @JoinColumn(name = "category_id")
   private CategoryEntity category;

   @ManyToOne
   @JoinColumn(name = "brand_id")
   private BrandEntity brand;
   
   @ManyToOne
   @JoinColumn(name = "supplier_id")
   private SupplierEntity supplier;
   
   @ManyToOne
   @JoinColumn(name = "promotion_id")
   private PromotionEntity promotion;
   
   @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
   private List<OrderDetailEntity> orderDetails;
   
    public ProductEntity() {
    }

    public ProductEntity(String id, String name, String description, Double price, Date productionDate, Date expiryDate, String country, Double weight, String packing, Integer stock, CategoryEntity category, BrandEntity brand, SupplierEntity supplier, PromotionEntity promotion, List<OrderDetailEntity> orderDetails) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.productionDate = productionDate;
        this.expiryDate = expiryDate;
        this.country = country;
        this.weight = weight;
        this.packing = packing;
        this.stock = stock;
        this.category = category;
        this.brand = brand;
        this.supplier = supplier;
        this.promotion = promotion;
        this.orderDetails = orderDetails;
    }
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getProductionDate() {
        return productionDate;
    }

    public void setProductionDate(Date productionDate) {
        this.productionDate = productionDate;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public String getPacking() {
        return packing;
    }

    public void setPacking(String packing) {
        this.packing = packing;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }

    public BrandEntity getBrand() {
        return brand;
    }

    public void setBrand(BrandEntity brand) {
        this.brand = brand;
    }

    public SupplierEntity getSupplier() {
        return supplier;
    }

    public void setSupplier(SupplierEntity supplier) {
        this.supplier = supplier;
    }

    public PromotionEntity getPromotion() {
        return promotion;
    }

    public void setPromotion(PromotionEntity promotion) {
        this.promotion = promotion;
    }

    public List<OrderDetailEntity> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetailEntity> orderDetails) {
        this.orderDetails = orderDetails;
    }
    public String getPriceFormated(){
        DecimalFormat format = new DecimalFormat("###, ###, ###");
        return  format.format(getPrice())+" VNĐ";
    }
    public Double getDiscountAmount(){
        return getPrice()*getPromotion().getDiscount();
    }
   
}
