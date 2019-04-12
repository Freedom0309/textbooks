package com.textbooks.dao;

import com.textbooks.entity.MajorBook;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.HashMap;
import java.util.List;


public interface MajorBookMapper {
    int deleteByPrimaryKey(String id);

    int insert(MajorBook record);

    int insertSelective(MajorBook record);

    MajorBook selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MajorBook record);

    int updateByPrimaryKey(MajorBook record);

  //  @Select("SELECT count(*) FROM t_app_majorbook mb where mb.bookid=#{bookid}")
    int getCountMajorBook(@Param("bookid") String bookid);

    List<HashMap<java.lang.String,java.lang.Object>> getMajorBookByPage(@Param("start") Integer start, @Param("size") Integer size, @Param("bookid") String bookid);
    // List<java.lang.Object> getMajorBookByPage(@Param("start") Integer start, @Param("size") Integer size, @Param("bookid") String bookid);
}