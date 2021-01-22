package com;

import org.hibernate.cfg.Configuration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TaskManagerApplication {

	public static void main(String[] args) {
		
		Configuration cfg=new Configuration();    
		cfg.configure("hibernate.cfg.xml"); 
		
		SpringApplication.run(TaskManagerApplication.class, args);
	}

}
