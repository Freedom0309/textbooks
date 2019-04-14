package com.textbooks.controller;
import com.textbooks.dao.DictionaryMapper;
import com.textbooks.entity.Dictionary;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class DictionaryControllerTest {
    private ApplicationContext applicationContext;

    @Autowired
    private DictionaryMapper dictionaryMapper;

    @BeforeEach
    void setUp() {
        applicationContext = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
        String name1 = applicationContext.getApplicationName();
        String[] names = applicationContext.getBeanDefinitionNames();
        for (String name: names) {
            System.out.println(name);
        }
        dictionaryMapper = applicationContext.getBean(DictionaryMapper.class);
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    public void selectByDey(){
        List<Dictionary> lst = dictionaryMapper.selectByDkey("app.college");
        System.out.println(lst);

    }
    @Test
    public void selectByLinkage(){
        List<Dictionary> lst = dictionaryMapper.selectByLinkage("app.major","2");
        System.out.println(lst);
    }
    @Test
    public void  selectData(){
        List<HashMap<String, Object>> lst = dictionaryMapper.selectData();
        System.out.println(lst);

    }
}