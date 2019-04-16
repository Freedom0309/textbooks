package com.textbooks.controller;

import com.textbooks.dao.NoticeMapper;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static org.junit.jupiter.api.Assertions.*;

class NoticeControllerTest {
    private ApplicationContext applicationContext;

    @Autowired
    private NoticeMapper noticeMapper;

    @BeforeEach
    void setUp() {
        applicationContext = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
        String name1 = applicationContext.getApplicationName();
        String[] names = applicationContext.getBeanDefinitionNames();
        for (String name: names) {
            System.out.println(name);
        }
        noticeMapper = applicationContext.getBean(NoticeMapper.class);
    }

    @AfterEach
    void tearDown() {
    }
    @Test
    public void getpage(){
        //System.out.println(noticeMapper.getNoticeByPage(1,10));
        System.out.println(noticeMapper.selectByMajorBookKey("e77f584b2730415b8d2418db578119c7"));
    }
}