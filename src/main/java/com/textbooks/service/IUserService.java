package com.textbooks.service;

import com.textbooks.entity.User;

public interface  IUserService {
    int deleteByPrimaryKey(String loginname);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String loginname);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

}
