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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
    public List<HashMap<String, Object>> booklst(HttpServletRequest request){
       String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        int index=1;
        if( page!=null) {
            index=Integer.parseInt(page);
        }
        int size = Integer.parseInt(limit);
        IBookService bookService=new BookService();
        PageUtil<Book> pageUtil=bookService.find(index,size);
        List<HashMap<String, Object>> data = new ArrayList<HashMap<String, Object>>();
        //modelAndView.addObject(pageUtil);
        System.out.println(pageUtil);
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("code","0");
        map.put("msg","success");
        map.put("count",pageUtil.getCount());
        map.put("data",pageUtil.getList());
        data.add(map);
        return data;
    }


    @ResponseBody
    @RequestMapping("/unitPage")
    public ModelAndView homepage(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("unit/unitList");
        return modelAndView;
    }



}
