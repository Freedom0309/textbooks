package com.textbooks.controller;


import com.textbooks.entity.Dictionary;
import com.textbooks.service.IDictionaryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/dictionary")
public class DictionaryController {
    @Resource
    public IDictionaryService dictionaryServie;

    @RequestMapping("/index")
    @ResponseBody
    public ModelAndView dictionaryIndex() {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("console1111");
        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("dic/index");
        return modelAndView;

    }

    @RequestMapping("/new")
    @ResponseBody
    public ModelAndView newIndex() {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("console1111");
        /*     modelAndView.addAttribute("user", user);*/
        modelAndView.setViewName("dic/new");
        return modelAndView;

    }

    //insertDic 新增字典

    @RequestMapping("/insertDic")
    @ResponseBody
    public HashMap<String, Object> insertDic(HttpServletRequest request){

       // List<HashMap<String, Object>> dict = dictionaryServie.selectData();
        Dictionary dic = new Dictionary();
        dic.setId(UUID.randomUUID().toString().replace("-", ""));
        dic.setDkey(request.getParameter("dkey"));
        dic.setDvalue(request.getParameter("dvalue"));
        dic.setDtext(request.getParameter("dvalue"));
        dic.setMemo(request.getParameter("dvalue"));
        dic.setPvalue(request.getParameter("pid"));
        dic.setOrdernum(Integer.parseInt(request.getParameter("ordernum")));
        int i  = dictionaryServie.insert(dic);
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", i);
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }
    //删除
    //insertDic 新增字典

    @RequestMapping("/delDic")
    @ResponseBody
    public HashMap<String, Object> delDic(HttpServletRequest request){

        int i = dictionaryServie.deleteByPrimaryKey(request.getParameter("id"));
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", i);
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }



    //数据展示
    @RequestMapping("/data")
    @ResponseBody
    public HashMap<String, Object> data(HttpServletRequest request){
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        List<HashMap<String, Object>> dict = dictionaryServie.selectData(Integer.parseInt(page),Integer.parseInt(limit));
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", dict);
        map.put("count", dict.size());
        map.put("msg", "success");
        map.put("code", 0);
        map.put("is",true);
        map.put("tip","操作成功！");
        return map;
    }


    @RequestMapping("/ajax_get_dic")
    @ResponseBody
    public HashMap<String, Object> ajax_get_dic(HttpServletRequest request){
        String key = request.getParameter("dkey");
        List<Dictionary> dict = dictionaryServie.selectByDkey(key);
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", dict);
        map.put("count", dict.size());
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }

    @RequestMapping("/ajax_get_linkage")
    @ResponseBody
    public HashMap<String, Object> ajax_get_linkage(HttpServletRequest request){
        String key = request.getParameter("dkey");
        String pvalue = request.getParameter("pvalue");
        List<Dictionary> dict = dictionaryServie.selectByLinkage(key,pvalue);
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", dict);
        map.put("count", dict.size());
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }

}
