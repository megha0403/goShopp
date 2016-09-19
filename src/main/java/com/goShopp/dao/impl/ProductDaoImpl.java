package com.goShopp.dao.impl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.goShopp.dao.ProductDao;
import com.goShopp.model.*;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

	private static final Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	public void addProduct(Product p) {
		System.out.println("\n\n\n\nInside dao\t\t"+p.getName()+"\n\n\n");
        
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(p);
		logger.info("Product saved successfully, Product Details="+p);
		
	}

	public void updateProduct(Product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Product updated successfully, Product Details="+p);
		
	}

	@SuppressWarnings("unchecked")
	public List<Product> listProducts() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productsList = session.createQuery("from Product").list();
		for(Product p : productsList){
			logger.info("Product List::"+p);
		}
		session.flush();
		return productsList;
	}

	public Product getProductById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Product p = (Product) session.load(Product.class, new Integer(id));
		logger.info("Product loaded successfully, Product details="+p);
		return p;
	}

	public void removeProduct(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Product deleted successfully, product details="+p);
	}
	}