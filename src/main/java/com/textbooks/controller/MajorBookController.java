package com.textbooks.controller;

import com.alibaba.fastjson.JSONObject;
import com.textbooks.entity.MajorBook;
import com.textbooks.service.IMajorBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.json.JsonObject;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.UUID;

@Controller
@RequestMapping("/majorBook")
public class MajorBookController {
    @Autowired
    private IMajorBookService majorBookService;

    @RequestMapping("/insertMajorBook")
    @ResponseBody
    public HashMap<String, Object> insertBook(HttpServletRequest request) {
        // id=23dd785baa4a4e069f960e8a3bb168b3&collegeid=1&majorid=3&classid=14&cclassnum=1&place=
        MajorBook majorBook = new MajorBook();
        majorBook.setId(UUID.randomUUID().toString().replace("-", ""));
        majorBook.setBookid(request.getParameter("id"));
        majorBook.setMajorid(request.getParameter("majorid"));
        majorBook.setClassid(request.getParameter("classid"));
        majorBook.setCclassnum(request.getParameter("cclassnum"));
        majorBook.setCollegeid(request.getParameter("collegeid"));
        majorBook.setPlace(request.getParameter("place"));
        majorBook.setReviewbook("未领取");
        int i = majorBookService.insert(majorBook);
        HashMap<String, Object> ro = new HashMap<String, Object>();
        ro.put("data", i);
        ro.put("msg", "success");
        ro.put("code", 0);
        return ro;

    }

    @RequestMapping("/majorBooklst")
    @ResponseBody
    public ModelAndView majorBooklst(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("console1111");
        modelAndView.addObject("user", "sdsad");
        modelAndView.setViewName("majorBook/majorBooklst");
        return modelAndView;

    }

    @RequestMapping("/list")
    @ResponseBody
    public HashMap<String, Object> list(HttpServletRequest request,String data) {
        //bookid , limit , page
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        //String bookid =  request.getParameter("data");
        JSONObject jsonObject = JSONObject.parseObject(data);
        System.out.println(jsonObject.getString("bookid"));
        String bookid = jsonObject.getString("bookid");
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", majorBookService.getMajorBookByPage(Integer.parseInt(page),Integer.parseInt(limit),bookid));
        System.out.println( majorBookService.getMajorBookByPage(Integer.parseInt(page),Integer.parseInt(limit),bookid));
        map.put("count", majorBookService.getCountMajorBook(bookid));
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }



}
