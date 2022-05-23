package org.kosta.finalproject.model.domain;


public class ShoppingCartVO {
	
	private String userId;
	private int itemId;
	
	
	public ShoppingCartVO(String userId, int itemId) {
		super();
		this.userId = userId;
		this.itemId = itemId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	
}
