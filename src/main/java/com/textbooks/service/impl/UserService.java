package com.textbooks.service.impl;

import com.textbooks.dao.UserMapper;
import com.textbooks.entity.Unit;
import com.textbooks.entity.User;
import com.textbooks.service.IUnitService;
import com.textbooks.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service("userService")
public class UserService implements IUserService {
    @Autowired
    public UserMapper userMapper;

    @Override
    public int deleteByPrimaryKey(String loginname) {
        return userMapper.deleteByPrimaryKey(loginname);
    }

    @Override
    public int insert(User record) {
        return userMapper.insert(record);
    }

    @Override
    public int insertSelective(User record) {
        return userMapper.insertSelective(record);
    }

    @Override
    public User selectByPrimaryKey(String loginname) {
        return userMapper.selectByPrimaryKey(loginname);
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int getcount() {
        return userMapper.getcount();
    }

    @Override
    public List<User> getUserByPage(Integer page, Integer size) {
        if(page == null || page <= 0){
            page = 1;
        }
        if (size == null || size <= 0){
            size = 10;
        }
        Integer start = (page - 1) * size;
        return  userMapper.getUserByPage(start,size);

    }
}
