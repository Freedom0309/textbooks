package com.textbooks.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

public class SQLSessionFactory {
    static Reader reader = null;
    static SqlSessionFactory sqlSessionFactory = null;

    private SQLSessionFactory() {
    }

    //这是一个静态语句块，用于读取主配置文件，因为主配置文件只需要读取一次。
    static {
        try {
            //形成输入流
            reader = Resources.getResourceAsReader("classpath:applicationContext.xml");
            System.out.println("reader"+reader);
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }

    //SqlSession工厂，只需要一个，所以做成单例模式
    public static SqlSessionFactory getSqlSessionFactory() {
        if (sqlSessionFactory == null) {
            synchronized (SQLSessionFactory.class) {
                if (sqlSessionFactory == null) {
                    sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
                }
            }
        }
        return sqlSessionFactory;
    }

    public static SqlSession getSession() {
        //返回一个数据操作连接对象
        return getSqlSessionFactory().openSession();
    }

    public static void main(String[] args) {
        System.out.println(SQLSessionFactory.getSession());
    }

}