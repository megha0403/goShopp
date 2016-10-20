package com.goShopp.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.goShopp.dao.ProductDao;
import com.goShopp.model.Product;
import com.goShopp.service.ProductService;
@Service

public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	@Transactional
	public void addProduct(Product p) {
		
		this.productDao.addProduct(p);
		
	}
@Transactional
	public void updateProduct(Product p) {
		this.productDao.updateProduct(p);
	}
@Transactional
	public List<Product> listProducts() {
		// TODO Auto-generated method stub
		return this.productDao.listProducts();
	}
@Transactional
public List<Product> listWcategory() {
	// TODO Auto-generated method stub
	return this.productDao.listWcategory();
}

@Transactional
	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return this.productDao.getProductById(id);
	}
@Transactional
	public void removeProduct(int id) {
		this.productDao.removeProduct(id);
	}
@Transactional
public List<Product> listMcategory() {
	// TODO Auto-generated method stub
	return this.productDao.listMcategory();

}
@Transactional
public List<Product> listKcategory() {
	// TODO Auto-generated method stub
	return this.productDao.listKcategory();
}
	}
