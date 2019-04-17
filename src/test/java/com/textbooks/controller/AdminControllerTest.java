package com.textbooks.controller;

import com.textbooks.dao.UserMapper;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static org.junit.jupiter.api.Assertions.*;

class AdminControllerTest {
    private ApplicationContext applicationContext;

    @Autowired
    private UserMapper userMapper;

    @BeforeEach
    void setUp() {
        applicationContext = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
        String name1 = applicationContext.getApplicationName();
        String[] names = applicationContext.getBeanDefinitionNames();
        for (String name: names) {
            System.out.println(name);
        }
        userMapper = applicationContext.getBean(UserMapper.class);
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    public  void selectp(){
        System.out.println(userMapper.getUserByPage(0,10));
        System.out.println(userMapper.getcount());

    }
}