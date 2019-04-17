package com.textbooks.controller;

import com.textbooks.service.INoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/front")
public class FrontController {

    @Autowired
    private INoticeService noticeService;

    @RequestMapping("/index")
    @ResponseBody
    public ModelAndView noticelst(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("front/index");
        return modelAndView;

    }

    @RequestMapping("/index1")
    @ResponseBody
    public ModelAndView noticelst1(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("front/index1");
        return modelAndView;

    }

    @RequestMapping("/noticeShow")
    @ResponseBody
    public HashMap<String, Object> noticeShow(){
        List<HashMap<String, Object>> data = noticeService.getfrontNotice();
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", data);
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }
}
