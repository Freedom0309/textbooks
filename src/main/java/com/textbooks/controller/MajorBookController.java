package com.textbooks.controller;

import com.alibaba.fastjson.JSONObject;
import com.textbooks.entity.Book;
import com.textbooks.entity.MajorBook;
import com.textbooks.service.IBookService;
import com.textbooks.service.IMajorBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.UUID;

@Controller
@RequestMapping("/majorBook")
public class MajorBookController {
    @Autowired
    private IMajorBookService majorBookService;

    @Autowired
    private IBookService bookService;

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

    @RequestMapping("/majorBooklstALL")
    @ResponseBody
    public ModelAndView majorBooklstALL(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("majorBook/majorBookALL");
        return modelAndView;

    }
    @RequestMapping("/listAll")
    @ResponseBody
    public HashMap<String, Object> listAll(HttpServletRequest request,String data) {
        //bookid , limit , page
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        String key =  request.getParameter("key");
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", majorBookService.getMajorBookALL(Integer.parseInt(page),Integer.parseInt(limit),key));
        System.out.println( majorBookService.getMajorBookALL(Integer.parseInt(page),Integer.parseInt(limit),key));
        map.put("count", majorBookService.getCount());
        map.put("msg", "success");
        map.put("code", 0);
        return map;
    }

    //领取书籍
    @RequestMapping("/rbup")
    @ResponseBody
    public HashMap<String, Object> rbup(HttpServletRequest request){
        String id  = request.getParameter("majorbookid");
        MajorBook mb = majorBookService.selectByPrimaryKey(id);
        HashMap<String, Object> map = new HashMap<String, Object>();
        if("未领取".equals(mb.getReviewbook())){
            Book b = bookService.selectByPrimaryKey(mb.getBookid());
            int count  = Integer.parseInt(b.getCount()) - Integer.parseInt(mb.getCclassnum());
            String status = "";
            if(count > 0){
                int nc = Integer.parseInt(b.getNum()) - count;
                if( nc >100){
                    status = "充足";
                }else if( nc>50 &&nc <= 100){
                    status = "紧张";
                }else{
                    status = "补货";
                }
            }else{
                status="缺货"+String.valueOf(count).replace("-","")+"本";
                mb.setReviewbook("补书中······");
                b.setCount(count+"");
                b.setStatus(status);
                int i =  majorBookService.updateByPrimaryKeySelective(mb);
                bookService.updateByPrimaryKeySelective(b);
                map.put("data", i);
                map.put("code", 2);
                map.put("msg", status);
                return map;
            }
            mb.setReviewbook("已领取");
            b.setCount(count+"");
            b.setStatus(status);
            int i =  majorBookService.updateByPrimaryKeySelective(mb);
            bookService.updateByPrimaryKeySelective(b);
            map.put("data", i);
            map.put("code", 0);
            map.put("msg", "success");
            return map;
        }
        if(("补书中······").equals(mb.getReviewbook())){
            map.put("code", 2);
            map.put("msg", "请补书···");
            return map;
        }
        map.put("code", 1);
        map.put("msg", "faile");
        return map;
    }




    @RequestMapping("/edit")
    @ResponseBody
    public HashMap<String, Object> edit(HttpServletRequest request){
        // id
        String id = request.getParameter("id");
        String value = request.getParameter("value");
        MajorBook mb = majorBookService.selectByPrimaryKey(id);
        mb.setCclassnum(value);
        int i =  majorBookService.updateByPrimaryKeySelective(mb);
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("data",i);
        map.put("msg", "success");
        return map;
    }

    @RequestMapping("/del")
    @ResponseBody
    public HashMap<String, Object> del(HttpServletRequest request){
        // id
        String id = request.getParameter("id");
        int i =  majorBookService.deleteByPrimaryKey(id);
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("data",i);
        map.put("msg", "success");
        return map;
    }

}
