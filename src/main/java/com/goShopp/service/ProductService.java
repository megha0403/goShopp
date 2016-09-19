package com.goShopp.service;
import java.util.List;
import com.goShopp.model.Product;
public interface ProductService {
	public void addProduct(Product p);
	public void updateProduct(Product p);
	public List<Product> listProducts();
	public Product getProductById(int id);
	public void removeProduct(int id);
	
}
