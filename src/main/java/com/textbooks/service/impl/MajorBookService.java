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
    public int insert(MajorBook majorBook) {
        return majorBookMapper.insert(majorBook);
    }

    @Override
    public int getCountMajorBook(String bookid) {
        return majorBookMapper.getCountMajorBook(bookid);
    }

    @Override
    public List<HashMap<String, Object>> getMajorBookByPage(Integer start, Integer size, String bookid) {
        return majorBookMapper.getMajorBookByPage(start,size,bookid);
    }


}
