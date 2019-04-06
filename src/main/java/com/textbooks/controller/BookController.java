package com.textbooks.controller;

import com.textbooks.entity.Book;
import com.textbooks.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/book")
public class BookController {

    private IBookService iBookService;

    public IBookService getIBookService() {
        return iBookService;
    }

    @Autowired
    public void setIBookService(IBookService iBookService) {
        this.iBookService = iBookService;
    }

  /*  public String getBooksInfo(@PathVariable String id, HttpServletRequest request){
//        Book book = iBookService.get
        return iBookService.getAll();
    }*/

 }
