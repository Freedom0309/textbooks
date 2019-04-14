package com.textbooks.service;

import com.textbooks.entity.Dictionary;

import java.util.HashMap;
import java.util.List;

public interface IDictionaryService {
    // 查dkey
    List<Dictionary> selectByDkey(String dkey);

    //查级联
    List<Dictionary> selectByLinkage(String dkey,String pvalue);

    //树数据
    List<HashMap<String, Object>> selectData();
}
