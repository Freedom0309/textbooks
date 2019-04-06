package com.textbooks.service;

import com.textbooks.entity.Unit;

import java.util.Collection;

//服务层调用DAO  写服务
public interface IUnitService {
    int deleteByPrimaryKey(String id);

    int insert(Unit record);

    int insertSelective(Unit record);

    Unit selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Unit record);

    int updateByPrimaryKey(Unit record);

    Collection<Unit> getAll();
}
