package com.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entity.Task;
import com.utility.HibernateUtility;

public class TaskDaoImpl implements TaskDao{

	@Override
	public Task getTask(int id) {
		Session hsesh = HibernateUtility.getSession();
		Task t = (Task) hsesh.get(Task.class, id);
		return t;
	}

	@Override
	public void updateTask(Task t) {
		Session hsesh = HibernateUtility.getSession();
		Transaction tx = hsesh.beginTransaction();
		hsesh.update(t);
		tx.commit();
	}

	@Override
	public void editTask(Task t) {
		Session hsesh = HibernateUtility.getSession();
		Transaction tx = hsesh.beginTransaction();
		hsesh.save(t);
		tx.commit();
	}

	@Override
	public void addTask(Task t) {
		Session hsesh = HibernateUtility.getSession();
		Transaction tx = hsesh.beginTransaction();
		hsesh.save(t);
		tx.commit();
	}

	@Override
	public List<Task> getAllTasks() {
		Session hsesh = HibernateUtility.getSession();
		return hsesh.createQuery("from Task", Task.class).getResultList();
	}

	@Override
	public void deleteTask(int id) {
		Session hsesh = HibernateUtility.getSession();
		Transaction tx = hsesh.beginTransaction();
		Task t = (Task) hsesh.get(Task.class,id);
	    hsesh.delete(t);
	    tx.commit();
	}

}
