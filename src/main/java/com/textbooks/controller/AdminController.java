package com.textbooks.controller;

import com.textbooks.entity.User;
import com.textbooks.service.IBookService;
import com.textbooks.service.IUserService;
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
    private IBookService bookService;

    @Autowired
    private IUserService userService;

    @RequestMapping("/index")
    @ResponseBody
    public ModelAndView adminIndex(){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("asa");
        System.out.println("qqq");
        //page=1&limit=10
        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("admin/index11");
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


    @ResponseBody
    @RequestMapping("/login")
    public ModelAndView adminlogin(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/login");
        return modelAndView;
    }

    @RequestMapping("/loginUser")
    @ResponseBody
    public HashMap<String, Object> loginUser(HttpServletRequest request){
        HashMap<String, Object> ro = new HashMap<String, Object>();
        String loginname = request.getParameter("loginname");
        String password = request.getParameter("password");
        User user =  userService.selectByPrimaryKey(loginname);
        if(user != null){
            if(user.getPassword().equals(password)){
                user.setIsonline(Byte.valueOf("1"));
                userService.updateByPrimaryKeySelective(user);
                ro.put("data", user);
                ro.put("msg", "success");
                ro.put("code", 0);
            }else{
                ro.put("data", "");
                ro.put("msg", "账号密码错误");
                ro.put("code", 1);
            }

        }else{
            ro.put("data", "");
            ro.put("msg", "用户不存在");
            ro.put("code", 1);
        }

        return ro;
    }

}
