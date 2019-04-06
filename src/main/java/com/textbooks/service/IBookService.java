package com.textbooks.service;

import com.textbooks.entity.Book;
import java.util.Collection;


public interface IBookService {
    int deleteByPrimaryKey(String id);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKey(Book record);

    Collection<Book> getAll();

    int getcount();
}
