package com.goShopp.dao.impl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.goShopp.dao.ProductDao;
import com.goShopp.model.*;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {


	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	public void addProduct(Product p) {
		System.out.println("\n\n\n\nInside dao\t\t"+p.getName()+"\n\n\n");
        
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(p);
		
		
	}

	public void updateProduct(Product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(p);
		
	}

	@SuppressWarnings("unchecked")
	public List<Product> listProducts() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productsList = session.createQuery("from Product").list();
		session.flush();
		return productsList;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> listWcategory() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productsList = session.createQuery("from Product where category='women'").list();
		session.flush();
		return productsList;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> listMcategory() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productsList = session.createQuery("from Product where category='men'").list();
		session.flush();
		return productsList;
	}


	@SuppressWarnings("unchecked")
	public List<Product> listKcategory() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productsList = session.createQuery("from Product where category='kids'").list();
		session.flush();
		return productsList;
	}


	public Product getProductById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Product p = (Product) session.get(Product.class, new Integer(id));
		return p;
	}

	public void removeProduct(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
	}
	}