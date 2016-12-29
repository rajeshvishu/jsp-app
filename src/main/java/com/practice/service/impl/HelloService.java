package com.practice.service.impl;

import org.springframework.stereotype.Service;

import com.practice.entity.User;

@Service
public interface HelloService {

	public String doLogin(String userName,String password);
	public String doRegister(User user);
}
