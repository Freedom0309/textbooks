package com.textbooks.service;

import com.textbooks.entity.Book;
import com.textbooks.entity.Unit;

import java.util.Collection;
import java.util.HashMap;


public interface IBookService {

    Book selectByPrimaryKey(String id);

    int deleteByids(String[] arr);

    Collection<Book> getAll();

    int getcount();

    int insertSelective(Book record);

    int updateByfieds(HashMap<String, Object> map);

}
