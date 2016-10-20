package com.goShopp.dao;
import java.util.List;

import com.goShopp.model.Product;
public interface ProductDao {		 
	public void addProduct(Product p);
	public void updateProduct(Product p);
	public List<Product> listProducts();
	public List<Product> listWcategory();
	public List<Product> listMcategory();
	public List<Product> listKcategory();
	public Product getProductById(int id);
	public void removeProduct(int id);    }
