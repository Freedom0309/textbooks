package com.textbooks.service.impl;

import com.textbooks.dao.BookMapper;
import com.textbooks.entity.Book;
import com.textbooks.service.IBookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.HashMap;


@Service("bookService")
public class BookService implements IBookService {

    @Resource
    public BookMapper bookMapper;

    @Override
    public Book selectByPrimaryKey(String id) {
        return bookMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByids(String[] arr) {
        return bookMapper.deleteByids(arr);
    }

    @Override
    public Collection<Book> getAll(){ return bookMapper.getAll();}

    @Override
    public int getcount() {
        return bookMapper.getcount();
    }

    @Override
    public int insertSelective(Book book) {
        return bookMapper.insertSelective(book);
    }

    @Override
    public int updateByfieds(HashMap<String, Object> map) {
        return bookMapper.updateByfieds(map);
    }

}
