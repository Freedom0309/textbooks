package com.textbooks.service;

import com.textbooks.entity.Dictionary;

import java.util.List;

public interface IDictionaryService {
    // 查dkey
    List<Dictionary> selectByDkey(String dkey);

    //查级联
    List<Dictionary> selectByLinkage(String dkey,String pvalue);
}
