package com.textbooks.controller;


import com.textbooks.entity.Notice;
import com.textbooks.service.INoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

@Controller
@RequestMapping("/notice")
public class NoticeController {
    @Autowired
    private INoticeService noticeService;

    @RequestMapping("/index")
    @ResponseBody
    public ModelAndView dictionaryIndex() {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("console1111");
        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("notice/index");
        return modelAndView;

    }
    @RequestMapping("/list")
    @ResponseBody
    public HashMap<String, Object> list(HttpServletRequest request) {
        //bookid , limit , page
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        //String bookid =  request.getParameter("data");
       // JSONObject jsonObject = JSONObject.parseObject(data);
       //  System.out.println(jsonObject.getString("bookid"));
      ///  String bookid = jsonObject.getString("bookid");

        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", noticeService.getNoticeByPage(Integer.parseInt(page),Integer.parseInt(limit)));
        System.out.println( noticeService.getNoticeByPage(Integer.parseInt(page),Integer.parseInt(limit)));
        map.put("count", noticeService.getcount());
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }



    //新增
    @RequestMapping("/insertNot")
    @ResponseBody
    public HashMap<String, Object> insertNot(HttpServletRequest request) {

        String majorbookid = request.getParameter("id");
        String college =  request.getParameter("college");
        String major = request.getParameter("major");
        String reviewbook= request.getParameter("reviewbook");
        String name =  request.getParameter("name");
        String cclass = request.getParameter("class");
        String cclassnum = request.getParameter("cclassnum");
        String place = request.getParameter("place");

        Notice not =  noticeService.selectByMajorBookKey(majorbookid);
        if(not!=null){
            not.setSyscreatime(new Date());
            int i = noticeService.updateByPrimaryKeySelective(not);
            HashMap<String, Object> ro = new HashMap<String, Object>();
            ro.put("data", i);
            ro.put("msg", "success");
            ro.put("code", 0);
            return  ro;

        }
        String content ="学院："+college+"-专业："+major+"-班级："+cclass+"-在:"+place+"领取图书《"+name+"》"+cclassnum+"本";
        Notice notice = new Notice();
        notice.setId(UUID.randomUUID().toString().replace("-", ""));
        notice.setTheme("领书公告");
        notice.setMajorbookid(majorbookid);
        notice.setContent(content);
        /*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.format(new Date());*/
        notice.setSyscreatime(new Date());
        int i = noticeService.insert(notice);
        HashMap<String, Object> ro = new HashMap<String, Object>();
        ro.put("data", i);
        ro.put("msg", "success");
        ro.put("code", 0);
        return  ro;
    }




}
