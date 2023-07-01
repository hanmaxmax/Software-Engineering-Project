package com.coffee.domain;

/**
 * JavaBean:PO，字段对应admin表
 * 
 * @author K
 */
public class Admin {
	private int adminId;
	private String account;

	public int getManager() {
		return manager;
	}

	public void setManager(int manager) {
		this.manager = manager;
	}

	private String password;
	private int manager;

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public int getAdminId() {
		return adminId;
	}
	
	public void setAccount(String account) {
		this.account = account;
	}
	public String getAccount() {
		return account;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	
	@Override
	public String toString() {
		return "Admin [account="+account+",password="+password+"]";
	}

}
