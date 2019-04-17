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
import java.util.UUID;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private IUserService userService;

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

    @RequestMapping("/userList")
    @ResponseBody
    public ModelAndView userList(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/userlist");
        return modelAndView;
    }

    @RequestMapping("/getUserlist")
    @ResponseBody
    public HashMap<String, Object> getUserlist(HttpServletRequest request){
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", userService.getUserByPage(Integer.parseInt(page),Integer.parseInt(limit)));
        map.put("count", userService.getcount());
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }

    //insertUser
    @RequestMapping("/insertUser")
    @ResponseBody
    public ModelAndView insertUserView(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/insert");
        return modelAndView;
    }


    @RequestMapping("/insuser")
    @ResponseBody
    public HashMap<String, Object> insertUser(HttpServletRequest request){
        String loginname = request.getParameter("loginname");
        String password = request.getParameter("password");
        HashMap<String, Object> map = new HashMap<String, Object>();
        User user = userService.selectByPrimaryKey(loginname);
        int i = 0;
        if(user!=null){
            user.setPassword(password);
            i = userService.updateByPrimaryKeySelective(user);
            map.put("code", 0);
        }else{
            user = new User();
            user.setId(UUID.randomUUID().toString().replace("-", ""));
            user.setLoginname(loginname);
            user.setPassword(password);
            user.setIsonline(Byte.valueOf("0"));
            i =  userService.insert(user);
            map.put("code", 0);
        }
        map.put("data", i);
        map.put("count", userService.getcount());
        map.put("msg", "success");

        return map;
    }

   // delUser
   @RequestMapping("/deluser")
   @ResponseBody
   public HashMap<String, Object> deluser(HttpServletRequest request){

        String loginname = request.getParameter("loginname");
        HashMap<String, Object> map = new HashMap<String, Object>();
           map.put("code", 0);
           map.put("data", userService.deleteByPrimaryKey(loginname));
           map.put("count", userService.getcount());
           map.put("msg", "success");
        return map;
   }

}
