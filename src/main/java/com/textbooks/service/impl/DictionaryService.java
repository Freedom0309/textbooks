package com.textbooks.service.impl;
import com.textbooks.dao.DictionaryMapper;
import com.textbooks.entity.Dictionary;
import com.textbooks.service.IDictionaryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
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

    @Override
    public List<HashMap<String, Object>> selectData(Integer page, Integer size) {
        if(page == null || page <= 0){
            page = 1;
        }
        if (size == null || size <= 0){
            size = 10;
        }
        Integer start = (page - 1) * size;

        return dictionaryMapper.selectData(start,size);
    }

    @Override
    public int insert(Dictionary dic) {
        return dictionaryMapper.insert(dic);
    }

    @Override
    public int deleteByPrimaryKey(String id) {
        List<HashMap<String, Object>> lstthr  = dictionaryMapper.selectThrpk(id);
        if(lstthr.size() > 0 ) {
            for (int j = 0 ; j<lstthr.size();j++) {
                 dictionaryMapper.deleteByPrimaryKey(lstthr.get(j).get("id").toString());
            }
        }
        List<HashMap<String, Object>> lstsec  = dictionaryMapper.selectSecpk(id);
        if(lstsec.size() > 0 ) {
            for (int j = 0 ; j<lstsec.size();j++) {
                dictionaryMapper.deleteByPrimaryKey(lstsec.get(j).get("id").toString());
            }
        }

        int i =  dictionaryMapper.deleteByPrimaryKey(id);

        return i;
    }


}
