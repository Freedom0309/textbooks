package com.textbooks.dao;

import com.textbooks.entity.Unit;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UnitMapperTest {

    private ApplicationContext applicationContext;

    @Autowired
    private UnitMapper mapper;

    @BeforeEach
    public void setUp(){
        applicationContext = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
        String name1 = applicationContext.getApplicationName();
        String[] names = applicationContext.getBeanDefinitionNames();
        for (String name: names) {
            System.out.println(name);
        }
        mapper = applicationContext.getBean(UnitMapper.class);
    }
    @AfterEach
    public void tearDown () throws Exception{

    }

    @Test
    public void insert() {
        Unit unit = new Unit();
        unit.setId("2");
        unit.setName("ruibao");
        int result = mapper.insertSelective(unit);
        System.out.println(result);
        assert result == 1;
    }

}