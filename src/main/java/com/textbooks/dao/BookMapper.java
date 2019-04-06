package com.textbooks.dao;

import com.textbooks.entity.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookMapper {
    int deleteByPrimaryKey(String id);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKey(Book record);

    List<Book> selectAll(int page,int limit);

    public List<Book> find(int num,int size);
    public Book findById(int id);
    public int update(Book book);
    public int findCount();

}