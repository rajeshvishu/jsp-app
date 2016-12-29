package com.practice.dao.impl;

import org.springframework.stereotype.Repository;

import com.practice.entity.User;

@Repository
public interface HelloDao {

	
	public String doLogin(String userName,String password);
	public String doRegister(User user);
}
