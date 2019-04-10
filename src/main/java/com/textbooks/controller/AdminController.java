package com.textbooks.controller;

import com.textbooks.service.impl.BookService;
import com.textbooks.service.impl.TextbooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

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

    @ResponseBody
    @RequestMapping("/unitPage")
    public ModelAndView homepage(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("unit/unitList");
        return modelAndView;
    }


    @ResponseBody
    @RequestMapping("/layuitest")
    public ModelAndView layuimodetest(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/layuimodetest");
        return modelAndView;
    }



}
