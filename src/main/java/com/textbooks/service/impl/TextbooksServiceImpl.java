package com.textbooks.service.impl;

import com.textbooks.dao.TextbooksDao;
import com.textbooks.entity.Textbooks;
import com.textbooks.service.TextbooksService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class TextbooksServiceImpl implements TextbooksService {

    @Resource
    private TextbooksDao textbooksDao;

    @Override
    public void insertTextbooks(Textbooks textbooks) {
        textbooksDao.insertTextbooks(textbooks);
    }
}
