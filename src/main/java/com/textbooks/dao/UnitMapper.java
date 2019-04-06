package com.textbooks.dao;

import com.textbooks.entity.Unit;
import org.springframework.stereotype.Repository;

@Repository
public interface UnitMapper {
    int deleteByPrimaryKey(String id);

    int insert(Unit record);

    int insertSelective(Unit record);

    Unit selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Unit record);

    int updateByPrimaryKey(Unit record);
}