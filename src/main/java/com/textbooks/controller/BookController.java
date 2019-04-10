package com.textbooks.controller;

import com.textbooks.entity.Book;
import com.textbooks.entity.Dictionary;
import com.textbooks.service.IBookService;
import com.textbooks.service.IDictionaryServie;
import com.textbooks.service.impl.TextbooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    private IBookService bookService;

    @Autowired
    private IDictionaryServie dictionaryServie;

    @Autowired
    private TextbooksService textbooksService;

  /*  public String getBooksInfo(@PathVariable String id, HttpServletRequest request){
//        Book book = iBookService.get
        return iBookService.getAll();
    }*/
        @RequestMapping("/booklst")
        @ResponseBody
        public ModelAndView consoleIndex(){
            ModelAndView modelAndView = new ModelAndView();
            System.out.println("console1111");
            /*     modelAndView.addAttribute("user", user);*/
            modelAndView.setViewName("book/booklist");
            modelAndView.addObject("user","adsa");
            return modelAndView;

        }

        @RequestMapping("/findbookAll")
        @ResponseBody
        public HashMap<String, Object> findbookAll(HttpServletRequest request){
            String page = request.getParameter("page");
            String limit = request.getParameter("limit");
            int index=1;
            if( page!=null) {
                index=Integer.parseInt(page);
            }
            //int size = Integer.parseInt(limit);
            /*PageUtil<Book> pageUtil=bookService.find(index,size);*/
         /*   //modelAndView.addObject(pageUtil);
            System.out.println(pageUtil);*/
            HashMap<String, Object> map = new HashMap<String, Object>();
            map.put("data",bookService.getAll());
            map.put("count",bookService.getcount());
            map.put("msg","success");
            map.put("code",0);
            System.out.println(bookService.getAll());
            return map;
        }

        @RequestMapping("/new")
        @ResponseBody
        public ModelAndView newbook(){
            ModelAndView modelAndView = new ModelAndView();
            System.out.println("console1111");
            List<Dictionary> dict = dictionaryServie.selectByDkey("app.ghs");
            modelAndView.addObject("ghs", "dict");
            modelAndView.setViewName("book/new");
            return modelAndView;

        }

        @RequestMapping("/delete")
        @ResponseBody
        public HashMap<String, Object>  deletebook(HttpServletRequest request){
            String[] arr = request.getParameter("ids").split(",");
            int a = bookService.deleteByids(arr);
            HashMap<String, Object> map = new HashMap<String, Object>();
            map.put("data",a);
            map.put("msg","success");
            map.put("code",0);
            return map;

        }

        @RequestMapping("/dialog")
        @ResponseBody
        public ModelAndView bookdialog(){
            ModelAndView modelAndView = new ModelAndView();
            System.out.println("console1111");
            modelAndView.addObject("user", "sdsad");
            modelAndView.setViewName("book/dialog");
            return modelAndView;

        }

        @RequestMapping("/edit")
        @ResponseBody
        public HashMap<String, Object> editbook(HttpServletRequest request){
            System.out.println(request.getParameter("id"));
            HashMap<String, Object> map = new HashMap<String, Object>();
            map.put("id","'"+request.getParameter("id")+"'");
            map.put("field",request.getParameter("field"));
            map.put("value","'"+request.getParameter("value")+"'");
            int i = bookService.updateByfieds(map);

            HashMap<String, Object> ro = new HashMap<String, Object>();
            ro.put("data",i);
            ro.put("msg","success");
            ro.put("code",0);
            return ro;
        }

    @RequestMapping("/insert")
    @ResponseBody
    public ModelAndView insert(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("console1111");
        modelAndView.addObject("user", "sdsad");
        modelAndView.setViewName("book/new");
        return modelAndView;

    }

    @RequestMapping("/insertBook")
    @ResponseBody
    public HashMap<String, Object> insertBook(HttpServletRequest request){
        // {"name":"去","ghs":"0","price":"去","discount":"去","num":"去"}
        String name = request.getParameter("name").toString();
     if(("".equals(name))){
         Book book = new Book();
         book.setId(UUID.randomUUID().toString().replace("-", ""));
         book.setName(request.getParameter("name"));
         book.setGhs(request.getParameter("ghs"));
         book.setPrice(request.getParameter("price"));
         book.setDiscount(request.getParameter("discount"));
         book.setNum(request.getParameter("num"));
         book.setCount(request.getParameter("num"));
         book.setStatus("充足");
         int i = bookService.insertSelective(book);
         if (i > 0) {
             HashMap<String, Object> ro = new HashMap<String, Object>();
             ro.put("data", i);
             ro.put("msg", "success");
             ro.put("code", 0);
             return ro;
         } else {
             HashMap<String, Object> ro = new HashMap<String, Object>();
             ro.put("data", 0);
             ro.put("msg", "新增失败");
             ro.put("code", 0);
             return ro;
         }

     }else{
         HashMap<String, Object> ro = new HashMap<String, Object>();
         ro.put("data", 0);
         ro.put("msg", "新增失败请填写教材名称");
         ro.put("code", 0);
         return ro;
     }

    }




 }
