package com.textbooks.controller;

import com.textbooks.entity.Book;
import com.textbooks.service.IBookService;
import com.textbooks.service.impl.BookService;
import com.textbooks.service.impl.TextbooksService;
import com.textbooks.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
   private TextbooksService textbooksService;

    @Autowired
    private BookService bookService;

    @RequestMapping("/index")
    @ResponseBody
    public ModelAndView adminIndex(){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("asa");
        System.out.println("qqq");
        //page=1&limit=10
        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("admin/index");
        return modelAndView;

    }

    @RequestMapping("/book")
    @ResponseBody
    public ModelAndView bookIndex(){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("asa");
        System.out.println("qqq");
        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("admin/book");
        modelAndView.addObject("");

        return modelAndView;

    }

    @RequestMapping("/console")
    @ResponseBody
    public ModelAndView consoleIndex(){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("console1111");

        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("admin/console");
        modelAndView.addObject("");

        return modelAndView;

    }

    @RequestMapping("/console1")
    @ResponseBody
    public ModelAndView console1Index(){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("console1");
        System.out.println("console1");

        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("admin/console1");
        modelAndView.addObject("");

        return modelAndView;

    }
    @RequestMapping("/booklst")
    @ResponseBody
    public ModelAndView booklst(HttpServletRequest request){
       String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        int index=1;
        if( page!=null) {
            index=Integer.parseInt(page);
        }
        int size = Integer.parseInt(limit);
        IBookService bookService=new BookService();
        PageUtil<Book> pageUtil=bookService.find(index,size);
        ModelAndView modelAndView = new ModelAndView();
        //modelAndView.addObject(pageUtil);
        modelAndView.addObject("pageUtil",pageUtil);
        System.out.println("booooooooooooooooooooooook");
        return modelAndView;
    }


    @ResponseBody
    @RequestMapping("/homepage")
    public ModelAndView homepage(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("admin/hompage1");
        return modelAndView;
    }



}
