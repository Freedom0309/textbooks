package com.textbooks.controller;

import com.textbooks.service.ITextbooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Textbooks")
public class TextbooksController {

    @Autowired
    private ITextbooksService textbooksService;

    @RequestMapping("/index")
    @ResponseBody
    public ModelAndView textbookIndex(){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("asa");
        System.out.println("qqq");

   /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("admin/index11");
        return modelAndView;

    }


}
