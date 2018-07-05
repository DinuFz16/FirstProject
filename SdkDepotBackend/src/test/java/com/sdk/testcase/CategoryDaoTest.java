package com.sdk.testcase;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sdk.dao.CategoryDAO;
import com.sdk.model.Category;

public class CategoryDaoTest {
	
	static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.sdk");
		context.refresh();
		
		categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		
	}
	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCategoryName("Console");
		category.setCateogryDesc("Keyboard and mouse");
		
		
		assertTrue("Problem in Adding Category",categoryDAO.addCategory(category));
		System.out.println("----Successfully register----");
	}

}
