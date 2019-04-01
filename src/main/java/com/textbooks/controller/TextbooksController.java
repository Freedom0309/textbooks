package com.textbooks.controller;

import com.textbooks.service.TextbooksService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping("/textbook")
public class TextbooksController {

    @Resource
    private TextbooksService textbooksService;

    @RequestMapping("/index")
    @ResponseBody
    public ModelAndView textbookIndex(){
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("index.html");
        return modelAndView;
    }
}
