package com.textbooks.service.impl;
import com.textbooks.dao.DictionaryMapper;
import com.textbooks.entity.Dictionary;
import com.textbooks.service.IDictionaryServie;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("dictionaryServie")
public class DictionaryServie implements IDictionaryServie {
    @Resource
    public DictionaryMapper dictionaryMapper;

    @Override
    public List<Dictionary> selectByDkey(String dkey) {
        return dictionaryMapper.selectByDkey(dkey);
    }
}
