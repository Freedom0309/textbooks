package com.textbooks.controller;


import com.textbooks.entity.Dictionary;
import com.textbooks.service.IDictionaryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/dictionary")
public class DictionaryController {
    @Resource
    public IDictionaryService dictionaryServie;

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
