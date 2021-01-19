package com.Dao;

import java.util.List;

import com.Entity.Task;

public interface TaskDao {

	public Task getTask(int id);
	
	public void updateTask(Task t);
	
	public void editTask(Task t);
	
	public void addTask(Task t);
	
	public List<Task> getAllTasks();
	
	public void deleteTask(int id);
	
}
