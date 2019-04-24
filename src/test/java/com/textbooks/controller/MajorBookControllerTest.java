package com.textbooks.controller;


import com.textbooks.dao.DictionaryMapper;
import com.textbooks.dao.MajorBookMapper;
import com.textbooks.entity.MajorBook;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class MajorBookControllerTest {
    private ApplicationContext applicationContext;

    @Autowired
    private MajorBookMapper majorBookMapper;

    @BeforeEach
    void setUp() {
        applicationContext = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
        String name1 = applicationContext.getApplicationName();
        String[] names = applicationContext.getBeanDefinitionNames();
        for (String name: names) {
            System.out.println(name);
        }
        majorBookMapper = applicationContext.getBean(MajorBookMapper.class);
    }

    @AfterEach
    void tearDown() {
    }
    @Test
    public void getCountMajorBook(){
       int i =  majorBookMapper.getCountMajorBook("76fd6bf2abc1496dbe135f92831d8b4b");
        System.out.println(i);
    }
    @Test
    public void  getMajorBookByPage(){
       /* List<HashMap<String, Object>> lst = majorBookMapper.getMajorBookByPage(0,2,"76fd6bf2abc1496dbe135f92831d8b4b");
        System.out.println(lst);*/
/*
        MajorBook mb =   majorBookMapper.selectByPrimaryKey("67d4d7b42ec64455b165534585888e5b");
        mb.setReviewbook("已领取");

        System.out.println( majorBookMapper.updateByPrimaryKeySelective(mb));*/
        System.out.println(majorBookMapper.getMajorBookByPage(0,10,"e768505c5ba748edae1c9a30bcf7c0f0"));
    }

}