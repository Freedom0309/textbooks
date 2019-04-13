package com.textbooks.controller;

import com.textbooks.dao.BookMapper;
import com.textbooks.entity.Book;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;
import java.util.HashMap;

import static org.junit.jupiter.api.Assertions.*;

class BookControllerTest {

    private ApplicationContext applicationContext;

    @Autowired
    private BookMapper bookMapper;

    @BeforeEach
    void setUp() {
        applicationContext = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
        String name1 = applicationContext.getApplicationName();
        String[] names = applicationContext.getBeanDefinitionNames();
        for (String name: names) {
            System.out.println(name);
        }
        bookMapper = applicationContext.getBean(BookMapper.class);
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    public void insertBook(){
        for (int i=0; i < 10; i++){
            Book book = new Book();
            book.setId(String.valueOf(new Date().getTime() / 1000 + i));
            book.setName("语文"+i);
            book.setPrice(String.valueOf(i * 10));
            bookMapper.insertSelective(book);

        }
    }
    @Test
    public void updateByfieds(){
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("id","1554734906");
        map.put("field","ghs");
        map.put("value",""+"\'zhangy\'");
       int i = bookMapper.updateByfieds(map);
        System.out.println(i);
    }

    @Test
    public void updateCount(){
        int i = bookMapper.updateCount("23dd785baa4a4e069f960e8a3bb168b3",233);
        System.out.println(i);
    }

}