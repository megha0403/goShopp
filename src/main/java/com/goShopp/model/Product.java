package com.goShopp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="PRODUCT")
public class Product {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@NotEmpty
	private String name;
	
	@NotEmpty
	private Integer price;
	
	@NotEmpty
	private Integer quantity;
	
	@NotEmpty
	private String category;
	 @Transient
	    private MultipartFile productImage;

		
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
	public MultipartFile getProductImage() {
		return productImage;
	}


	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}



	@Override
	public String toString(){
		return "id="+id+", name="+name+", price="+price+", quantity="+quantity+",category="+category+"";
	}
}