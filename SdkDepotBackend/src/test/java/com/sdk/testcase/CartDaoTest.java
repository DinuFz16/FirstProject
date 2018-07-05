package com.sdk.testcase;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sdk.dao.CartDAO;
import com.sdk.model.CartItem;

public class CartDaoTest {

static CartDAO cartdao;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.sdk");
		context.refresh();
		
		cartdao=(CartDAO)context.getBean("cartDAO");
	}
	
	@Test
	public void addCartTest()
	{
		CartItem cartItem=new CartItem();
		
		cartItem.setProductId(01);
		cartItem.setProductName("Asus x");
		cartItem.setQuantity(10);
		cartItem.setStatus("NP");
		cartItem.setPrice(2000);
		
		assertTrue("Problem in Creating CartItem",cartdao.addToCart(cartItem));
		System.out.println("----Successfully register----");
	}
}
