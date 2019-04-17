package com.textbooks.dao;

import com.textbooks.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(String loginname);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String loginname);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}