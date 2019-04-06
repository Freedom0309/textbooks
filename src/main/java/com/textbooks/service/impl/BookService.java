package com.textbooks.service.impl;

import com.textbooks.dao.BookMapper;
import com.textbooks.entity.Book;
import com.textbooks.service.IBookService;
import com.textbooks.util.PageUtil;
import com.textbooks.util.SQLSessionFactory;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


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
    public PageUtil<Book> find(int pageIndex, int size) {
        PageUtil<Book> pageUtil=new PageUtil<Book>();
        List<Book> list=null;
        SqlSession sqlSession=null;
        //总记录数
        int count=0;
        try {
            sqlSession= SQLSessionFactory.getSession();
            BookMapper dao=sqlSession.getMapper(BookMapper.class);
            count=dao.findCount();
            int num=(pageIndex-1)*size;
            list =dao.find(num,size);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            if(sqlSession!=null) {
                sqlSession.close();
            }
        }
        //封装分页所需要的数据
        pageUtil.setPageIndex(pageIndex);
        pageUtil.setList(list);
        pageUtil.setCount(count);
        pageUtil.setPageSize(size);
        pageUtil.setPageNumber((int)Math.ceil((double)count/size));
        return pageUtil;

    }

    @Override
    public Book findById(int id) {
        Book book=new Book();
        SqlSession sqlSession=null;
        try {
            sqlSession= SQLSessionFactory.getSession();
            BookMapper dao=sqlSession.getMapper(BookMapper.class);
            book =dao.findById(id);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            if(sqlSession!=null) {
                sqlSession.close();
            }
        }
        return book;
    }

    @Override
    public int update(Book book) {
        SqlSession sqlSession=null;
        try {
            sqlSession= SQLSessionFactory.getSession();
            BookMapper dao=sqlSession.getMapper(BookMapper.class);
            return dao.update(book);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            if(sqlSession!=null) {
                sqlSession.commit();
                sqlSession.close();
            }
        }
        return 0;

    }


}
