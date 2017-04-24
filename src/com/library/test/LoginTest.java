//com.chinasofti.test.LoginTest.java

package com.library.test;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.library.action.AdminLoginAction;
import com.library.pojo.dgq.AdminInfo;

public class LoginTest {
    
    private static ApplicationContext ac;
    private static AdminLoginAction bean;
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
       ac = new ClassPathXmlApplicationContext("applicationContext.xml");
       bean = ac.getBean(AdminLoginAction.class);
    }

    @AfterClass
    public static void tearDownAfterClass() throws Exception {
    }
    

    @Test
    public void testLoginVertify() {
        AdminInfo adminInfo = new AdminInfo();
        adminInfo.setAdminname("hello");
        adminInfo.setPwd("hello");
        String loginVertify = bean.loginVertify(adminInfo);
        System.out.println(loginVertify);
    }

}
