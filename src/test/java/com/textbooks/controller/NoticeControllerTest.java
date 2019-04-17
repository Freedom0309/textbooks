package com.textbooks.controller;

import com.textbooks.dao.NoticeMapper;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
      //  System.out.println(noticeMapper.selectByMajorBookKey("e77f584b2730415b8d2418db578119c7"));
     //   System.out.println(noticeMapper.selectMonth());
    //    System.out.println(noticeMapper.selectbyMon("2019-03"));
        List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
        List<HashMap<String, Object>> monList = noticeMapper.selectMonth();
        if(monList.size()>0){
            for(int i=0;i<monList.size();i++){
                HashMap<String, Object>  map =  new HashMap<String, Object>();
                String mon = monList.get(i).get("time").toString();
                String total = monList.get(i).get("total").toString();
                List<HashMap<String, Object>> dayList = noticeMapper.selectbyMon(mon);
                map.put("mon",mon);
                map.put("total",total);
                map.put("dayList",dayList);
                list.add(map);
            }
        }

        System.out.println(list);
    }
}