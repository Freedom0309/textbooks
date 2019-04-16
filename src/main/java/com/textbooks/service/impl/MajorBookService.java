package com.textbooks.service.impl;

import com.textbooks.dao.MajorBookMapper;
import com.textbooks.entity.MajorBook;
import com.textbooks.service.IMajorBookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service("majorBookService")
public class MajorBookService implements IMajorBookService {
    @Resource
    public MajorBookMapper majorBookMapper;

    @Override
    public int deleteByPrimaryKey(String id) {
        return majorBookMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insertSelective(MajorBook record) {
        return majorBookMapper.insertSelective(record);
    }

    @Override
    public MajorBook selectByPrimaryKey(String id) {
        return majorBookMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(MajorBook record) {
        return majorBookMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(MajorBook record) {
        return majorBookMapper.updateByPrimaryKey(record);
    }

    @Override
    public int insert(MajorBook majorBook) {
        return majorBookMapper.insert(majorBook);
    }

    @Override
    public int getCountMajorBook(String bookid) {
        return majorBookMapper.getCountMajorBook(bookid);
    }

    @Override
    public List<HashMap<String, Object>> getMajorBookByPage(Integer page, Integer size, String bookid) {
        if(page == null || page <= 0){
            page = 1;
        }
        if (size == null || size <= 0){
            size = 10;
        }
        Integer start = (page - 1) * size;
        return majorBookMapper.getMajorBookByPage(start,size,bookid);
    }


}
