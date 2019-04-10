package com.textbooks.controller;


import com.textbooks.service.IDictionaryServie;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/book")
public class DictionaryController {
    @Resource
    public IDictionaryServie dictionaryServie;

}
