package com.Dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.Entity.UserInfo;
import com.utility.HibernateUtility;

@Repository
public class UserDaoImpl implements UserDao{

	@Override
	public UserInfo getUser(int id) {
		Session hsesh = HibernateUtility.getSession();
		UserInfo u = (UserInfo) hsesh.get(UserInfo.class, id);
		return u;
	}

	@Override
	public void updateUser(UserInfo u) {
		Session hsesh = HibernateUtility.getSession();
		Transaction tx = hsesh.beginTransaction();
		hsesh.update(u);
		tx.commit();
	}

	@Override
	public void addUser(UserInfo u) {
		Session hsesh = HibernateUtility.getSession();
		Transaction tx = hsesh.beginTransaction();
		hsesh.save(u);
		tx.commit();
	}

}
