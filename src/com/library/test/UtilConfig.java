package com.library.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UtilConfig {
	public static ApplicationContext ac =  new ClassPathXmlApplicationContext("applicationContext.xml");
}
