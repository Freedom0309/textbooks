package com.textbooks.dao;

import com.textbooks.entity.Dictionary;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DictionaryMapper {
    int deleteByPrimaryKey(String id);

    int insert(Dictionary record);

    int insertSelective(Dictionary record);

    Dictionary selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Dictionary record);

    int updateByPrimaryKey(Dictionary record);

    @Select("Select * from t_sys_dictionary where dkey=#{dkey}")
    List<Dictionary> selectByDkey(String dkey);

}