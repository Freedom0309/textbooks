package com.textbooks.controller;

import com.textbooks.service.IUnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/unit")
public class UnitController {

    @Autowired
    private IUnitService unitService;

    @RequestMapping("/new")
    public ModelAndView addUnit(){
        ModelAndView modelAndView = new ModelAndView("unit/new");
        return modelAndView;
    }

}
