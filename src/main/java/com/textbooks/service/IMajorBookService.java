package com.textbooks.service;

import com.textbooks.entity.MajorBook;

import java.util.HashMap;
import java.util.List;

public interface IMajorBookService {

    int insert(MajorBook record);

    int getCountMajorBook(String bookid);

    List<HashMap<String, Object>> getMajorBookByPage(Integer start, Integer size, String bookid);
}
