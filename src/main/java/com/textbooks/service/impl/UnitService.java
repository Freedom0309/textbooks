package com.textbooks.service.impl;

import com.textbooks.dao.UnitMapper;
import com.textbooks.entity.Unit;
import com.textbooks.service.IUnitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collection;

@Service("unitService")
public class UnitService implements IUnitService {

    @Resource
    private UnitMapper unitMapper;

    @Override
    public int deleteByPrimaryKey(String id) {

        return unitMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Unit record) {
        return unitMapper.insert(record);
    }

    @Override
    public int insertSelective(Unit record) {
        return unitMapper.insertSelective(record);
    }

    @Override
    public Unit selectByPrimaryKey(String id) {
        return unitMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Unit record) {
        return unitMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Unit record) {
        return unitMapper.updateByPrimaryKey(record);
    }

    @Override
    public Collection<Unit> getAll() {
        return unitMapper.getAll();
    }
}
