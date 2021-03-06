package com.sdk.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sdk.dao.CartDAO;
import com.sdk.dao.OrderDAO;
import com.sdk.model.CartItem;
import com.sdk.model.OrderDetails;

@Controller
public class PaymentController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDAO orderDAO;

	@RequestMapping(value="/orderConfirm")
	public String showOrderConfirm(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("loggedInUserID");
		List<CartItem> listCartItems=cartDAO.listCartItems(username);
		
		m.addAttribute("listCartItems", listCartItems);
		m.addAttribute("totalCost", this.calculateTotalCost(listCartItems));
		session.setAttribute("CartItems",listCartItems.size());
		
		return "OrderConfirm";
	}
	
	@RequestMapping(value="/paymentConfirmation")
	public String paymentConfirm(@RequestParam("mode")String paymentMode,HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("loggedInUserID");
		List<CartItem> listCartItems=cartDAO.listCartItems(username);
		
		m.addAttribute("listCartItems", listCartItems);
		m.addAttribute("totalCost", this.calculateTotalCost(listCartItems));
		session.setAttribute("CartItems",0);
		
		if(orderDAO.updateCartItemStatus(username))
		{
		OrderDetails orderDetail=new OrderDetails();
		orderDetail.setPurchaseValue(this.calculateTotalCost(listCartItems));
		orderDetail.setPaymentMode(paymentMode);
		orderDetail.setUsername(username);
		orderDetail.setOrderDate(new java.util.Date());
		orderDAO.receiptGenerate(orderDetail);
		
		session.setAttribute("orderId", orderDetail.getOrderId());
		session.setAttribute("orderdate",orderDetail.getOrderDate());
		
		}
		
		return "Receipt";
	}
	
	public int calculateTotalCost(List<CartItem> cartItems)
	{
		int totalCost=0;
		int count=0;
		
		while(count<cartItems.size())
		{
			totalCost=totalCost+(cartItems.get(count).getPrice()*cartItems.get(count).getQuantity());
			count++;
		}
		
		return totalCost;
	}

}
