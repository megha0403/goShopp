package com.goShopp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PRODUCT")
public class Product {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private Integer price;
	
	private Integer quantity;
	
	private String category;

		
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


		public Integer getPrice() {
		return price;
	}


	public void setPrice(Integer price) {
		this.price = price;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


		public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	@Override
	public String toString(){
		return "id="+id+", name="+name+", price="+price+", quantity="+quantity+",category="+category+"";
	}
}