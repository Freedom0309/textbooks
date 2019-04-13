package com.textbooks.service.impl;

import com.textbooks.dao.BookMapper;
import com.textbooks.entity.Book;
import com.textbooks.service.IBookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;


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
        /*if("num".equals(map.get("field"))){
            bookMapper.updateCount(map.get("id").toString(),Integer.parseInt(map.get("value").toString()));
        }*/
        return bookMapper.updateByfieds(map);
    }

    @Override
    public List<Book> getBookByPage(Integer page, Integer size) {
        if(page == null || page <= 0){
            page = 1;
        }
        if (size == null || size <= 0){
            size = 10;
        }
        Integer start = (page - 1) * size;
        return  bookMapper.getBookByPage(start,size);

    }

}
