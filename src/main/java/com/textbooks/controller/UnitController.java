package com.textbooks.controller;

import com.textbooks.entity.Unit;
import com.textbooks.service.IUnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.HashMap;

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

    @RequestMapping("findAllUnit")
    public HashMap<String, Object> findAllUnit(HttpServletRequest request){
        request.getAttributeNames();
        String pageName = request.getParameter("pageName");
        System.out.println(unitService.getAll());
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg","success");
        map.put("count",unitService.getCount());
        map.put("data",unitService.getAll());
        return map;
    }

    @RequestMapping("delete")
    public void deleteUnit(String id){
        unitService.deleteByPrimaryKey(id);
    }
}
