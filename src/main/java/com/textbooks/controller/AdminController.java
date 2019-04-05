package com.textbooks.controller;

import com.textbooks.service.impl.BookService;
import com.textbooks.service.impl.TextbooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
        System.out.println("asa");
        System.out.println("qqq");

        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("admin/console");
        modelAndView.addObject("");

        return modelAndView;

    }


    @RequestMapping("/booklst")
    @ResponseBody
    public ModelAndView booklst(){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("asa");
        System.out.println("qqq");

        /*     modelAndView.addAttribute("user", user);*/
      //  modelAndView.setViewName("admin/console");




        modelAndView.addObject("");

        return modelAndView;

    }

}
