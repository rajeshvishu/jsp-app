package com.practice.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.practice.entity.User;

@Repository
public class HelloDaoImpl implements HelloDao {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional(readOnly = false)

	public String doLogin(String userName, String password) {
		System.out.println("---------In here hellodao impl -----Login-----------");
		LocalSessionFactoryBean sessionFactory1 = new LocalSessionFactoryBean();
		System.out.println("-----here--------");
		// String s=
		// sessionFactory1.getConfiguration().getProperties().getProperty("configLocation");
		// System.out.println("here1111------>>"+s);

		sessionFactory.openSession();

		Session session = sessionFactory.getCurrentSession();

		User details = new User();
		details.setPassword("m1");
		details.setId(3);
		details.setName("raja");

		// session.save(details);
		System.out.println("------------------->here");
		// session.close();
		// session.beginTransaction();
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("name", userName));
		criteria.add(Restrictions.eq("password", password));
		List<User> results = criteria.list();
		if (results.size() > 0) {
			System.out.println("printed");
			return results.get(0).getId() + "is logged in successfully";
		}

		return "unable to login";
	}
	@Transactional(readOnly = false)
	public String doRegister(User user) {
		sessionFactory.openSession();
	//	user.setId(5);
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
		return "registered successfully";
	}

}
