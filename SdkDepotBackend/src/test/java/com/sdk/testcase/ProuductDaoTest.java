package com.sdk.testcase;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sdk.dao.ProductDAO;
import com.sdk.model.Product;

public class ProuductDaoTest {
	
	static ProductDAO productdao;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.sdk");
		context.refresh();
		
		productdao=(ProductDAO)context.getBean("productDAO");
	}
	
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductName("Asus x");
		product.setProdDesc("Good configuration");
		product.setPrice(2000);
		product.setCategoryId(1);
		product.setStock(12);
		product.setSupplierId(2);
		
		assertTrue("Problem in Adding Category",productdao.addProduct(product));
		System.out.println("----Successfully register----");
	}

}
