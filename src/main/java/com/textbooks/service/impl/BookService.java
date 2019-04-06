package com.textbooks.service.impl;

import com.textbooks.dao.BookMapper;
import com.textbooks.entity.Book;
import com.textbooks.service.IBookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collection;



@Service("bookService")
public class BookService implements IBookService {

    @Resource
    public BookMapper bookMapper;

    @Override
    public int deleteByPrimaryKey(String id) {
        return bookMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Book record) {
        return bookMapper.insert(record);
    }

    @Override
    public int insertSelective(Book record) {
        return bookMapper.insertSelective(record);
    }

    @Override
    public Book selectByPrimaryKey(String id) {
        return bookMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Book record) {
        return bookMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Book record) {
        return bookMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Collection<Book> getAll(){ return bookMapper.getAll();}

    @Override
    public int getcount() {
        return bookMapper.getcount();
    }

}
