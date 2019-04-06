package com.textbooks.dao;

import com.textbooks.entity.Textbooks;
import org.springframework.stereotype.Repository;

@Repository
public interface TextbooksDao {

    int insertTextbooks(Textbooks textbooks);
}
