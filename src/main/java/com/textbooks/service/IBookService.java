package com.textbooks.service;

import com.textbooks.entity.Book;
import com.textbooks.util.PageUtil;

public interface IBookService {
    int deleteByPrimaryKey(String id);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKey(Book record);

    public PageUtil<Book> find(int pageIndex, int size);
    public Book findById(int id);
    public int update(Book book);


}
