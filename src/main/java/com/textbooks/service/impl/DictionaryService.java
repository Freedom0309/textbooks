package com.textbooks.service.impl;
import com.textbooks.dao.DictionaryMapper;
import com.textbooks.entity.Dictionary;
import com.textbooks.service.IDictionaryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("dictionaryServie")
public class DictionaryService implements IDictionaryService {
    @Resource
    public DictionaryMapper dictionaryMapper;

    @Override
    public List<Dictionary> selectByDkey(String dkey) {
        return dictionaryMapper.selectByDkey(dkey);
    }

    @Override
    public List<Dictionary> selectByLinkage(String dkey, String pvalue) {
        return dictionaryMapper.selectByLinkage(dkey,pvalue);
    }
}
