package com.practice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.dao.impl.HelloDao;
import com.practice.entity.User;

@Service
public class HelloServiceImpl implements HelloService {

	@Autowired HelloDao dao;
	
	

	public String doLogin(String userName, String password) {
		// TODO Auto-generated method stub
	return dao.doLogin(userName, password);
	
	}



	public String doRegister(User user) {
		// TODO Auto-generated method stub
		return dao.doRegister(user);
	}

}
