package com.sdk.testcase;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sdk.dao.UserDAO;
import com.sdk.model.UserDetail;

public class UserDaoTest {

	
static UserDAO userdao;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.sdk");
		context.refresh();
		
		userdao=(UserDAO)context.getBean("userDAO");
	}
	
	@Test
	public void addProductTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("dinesh");
		user.setEmailId("sdkkumar9797.dk@gmail.com");
		user.setMobileNo("7401271035");
		user.setAddress("chennai");
		user.setCustomerName("DineshKumar");
		user.setEnabled(true);
		user.setRole("ROLE_ADMIN");
		user.setPassword("dinesh@16");
		
		assertTrue("Problem in Adding Category",userdao.registerUser(user));  //
		System.out.println("----Successfully register----");
	}
}
