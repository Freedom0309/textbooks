package com.textbooks.dao;

import com.textbooks.entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(String loginname);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String loginname);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    @Select("select count(*) from t_sys_user")
    int getcount();

    List<User> getUserByPage(@Param("start") Integer start, @Param("size") Integer size);
}