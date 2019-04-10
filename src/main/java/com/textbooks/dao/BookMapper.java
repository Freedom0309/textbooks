package com.textbooks.dao;

import com.textbooks.entity.Book;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.HashMap;


@Repository
public interface BookMapper {

    Book selectByPrimaryKey(String id);

    @Select("select * from t_app_books")
    Collection<Book> getAll();

    @Select("select count(*) from t_app_books")
    int getcount();

    int deleteByids(String[] arr);

    int insertSelective(Book book);

    int updateByfieds(HashMap<String, Object> map);

}