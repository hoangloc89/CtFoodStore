/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.spring.jv34_spring_project_ctfood.entities;

import java.text.NumberFormat;
import java.util.Locale;
import javax.persistence.*;

/**
 *
 * @author DIENMAYXANH
 */
@Entity
@Table(name = "order_detail")
public class OrderDetailEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private int quantity;
    private Double unitPrice;
    private Double amount;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private OrderEntity order;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private ProductEntity product;

    public OrderDetailEntity() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Double getUnitPrice() {
        return this.product.getPrice() - this.product.getPromotion().getDiscount() * this.product.getPrice();
    }

    public void setUnitPrice(Double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public OrderEntity getOrder() {
        return order;
    }

    public void setOrder(OrderEntity order) {
        this.order = order;
    }

    public ProductEntity getProduct() {
        return product;
    }

    public void setProduct(ProductEntity product) {
        this.product = product;
    }

    public Double getAmount() {
        return getQuantity()*getUnitPrice();
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }
    public String getAmountFormatted(){
    NumberFormat format = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));
    return format.format(getAmount())+" VNĐ";
    }   
}
