package com.sdk.dao;

import com.sdk.model.OrderDetails;

public interface OrderDAO
{
	public boolean receiptGenerate(OrderDetails orderDetail);
	public boolean updateCartItemStatus(String username);
}
