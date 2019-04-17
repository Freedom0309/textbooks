package com.textbooks.service;

import com.textbooks.entity.User;

import java.util.List;

public interface  IUserService {
    int deleteByPrimaryKey(String loginname);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String loginname);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    //分页
    int getcount();

    List<User> getUserByPage(Integer start, Integer size);
}
