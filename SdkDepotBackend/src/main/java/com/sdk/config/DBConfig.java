package com.sdk.config;


import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.sdk.dao.CartDAO;
import com.sdk.dao.CartDAOImpl;
import com.sdk.dao.CategoryDAO;
import com.sdk.dao.CategoryDAOImpl;
import com.sdk.dao.OrderDAO;
import com.sdk.dao.OrderDAOImpl;
import com.sdk.dao.ProductDAO;
import com.sdk.dao.ProductDAOImpl;
import com.sdk.dao.UserDAO;
import com.sdk.dao.UserDAOImpl;
import com.sdk.model.CartItem;
import com.sdk.model.Category;
import com.sdk.model.OrderDetails;
import com.sdk.model.Product;
import com.sdk.model.UserDetail;

@Configuration
@ComponentScan("com.sdk")
@EnableTransactionManagement
public class DBConfig {
	

	@Bean(name="dataSource")
	public DataSource getH2DataSource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
		dataSource.setUsername("sa");
		dataSource.setPassword("sa");
		
		System.out.println("---Data Source Created---");
		return dataSource;
	}
	
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory()
	{
		
		Properties hibernateProp=new Properties();
		
		hibernateProp.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProp.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		
		LocalSessionFactoryBuilder factoryBuilder=new LocalSessionFactoryBuilder(getH2DataSource());
		factoryBuilder.addAnnotatedClass(Category.class);
		factoryBuilder.addAnnotatedClass(Product.class);
		factoryBuilder.addAnnotatedClass(UserDetail.class);
		factoryBuilder.addAnnotatedClass(CartItem.class);
		factoryBuilder.addAnnotatedClass(OrderDetails.class);
		
		factoryBuilder.addProperties(hibernateProp);
		
		System.out.println("Creating SessionFactory Bean");
		return factoryBuilder.buildSessionFactory();
	}
	
	
	@Bean(name="categoryDAO")
	public CategoryDAO getCategoryDAO()
	{
		System.out.println("----Category DAO Implementation---");
		return new CategoryDAOImpl();
	}
	
	@Bean(name="userDAO")
	public UserDAO getUserDAO()
	{
		System.out.println("---user DAO Implementation ---");
		return new UserDAOImpl();
	}
	
	@Bean(name="productDAO")
	public ProductDAO getProductDAO()
	{
		System.out.println("---Product DAO Implementation ---");
		return new ProductDAOImpl();
	}
	
	@Bean(name="cartDAO")
	public CartDAO getCartDAO()
	{
		System.out.println("-- Cart DAO Implementation ----");
		return new CartDAOImpl();
	}
	
	@Bean(name="orderDAO")
	public OrderDAO getOrderDAO()
	{
		System.out.println("-- Order DAO Implementation ----");
		return new OrderDAOImpl();
	}
	
	@Bean(name="txManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		System.out.println("---Transaction Manager----");
		return new HibernateTransactionManager(sessionFactory);
	}

}
