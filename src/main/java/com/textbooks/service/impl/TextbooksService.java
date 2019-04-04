package com.textbooks.service.impl;

import com.textbooks.dao.TextbooksDao;
import com.textbooks.entity.Textbooks;
import com.textbooks.service.ITextbooksService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("TextbooksService")
public class TextbooksService implements ITextbooksService {

    @Resource
    private TextbooksDao textbooksDao;

    public void insertTextbooks(Textbooks textbooks) {
        textbooksDao.insertTextbooks(textbooks);
    }
}
