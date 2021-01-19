package com.webBackend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.TaskDaoImpl;
import com.Entity.ID;
import com.Entity.Task;

@Controller
@RequestMapping("/dashboard")
public class controller {
	
	@GetMapping("/create")
	public ModelAndView addTasks() {
		Task t = new Task();
		return new ModelAndView("createTasks", "task", t);
	}
	
	@PostMapping("/create/taskcreated")
	public ModelAndView submit(@ModelAttribute Task t) {
		TaskDaoImpl dao = new TaskDaoImpl(); 
		dao.addTask(t);
		return new ModelAndView("redirect:/dashboard/display");
	}
	
	@GetMapping("/display")
	public ModelAndView displayTasks() {
		return new ModelAndView("displayTasks");
	}
	
	@PostMapping("/update/taskupdated")
	public ModelAndView update(@ModelAttribute Task t) {
		TaskDaoImpl dao = new TaskDaoImpl();
		dao.updateTask(t);
		return new ModelAndView("redirect:/dashboard/display");
	}
	
	@GetMapping("/update")
	public ModelAndView updateTask() {
		return new ModelAndView("updateTasks");
	}
	
	@PostMapping("/delete/taskdeleted")
	public ModelAndView delete(@ModelAttribute ID i) {
		TaskDaoImpl dao = new TaskDaoImpl();
		dao.deleteTask(i.getId());
		return new ModelAndView("redirect:/dashboard/display");
	}
	
	@GetMapping("/delete")
	public ModelAndView deleteTask() {
		return new ModelAndView("deleteTasks");
	}
	
}
