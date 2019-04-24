package com.textbooks.dao;

import com.textbooks.entity.Dictionary;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.HashMap;
import java.util.List;

public interface DictionaryMapper {
    int deleteByPrimaryKey(String id);

    int insert(Dictionary record);

    int insertSelective(Dictionary record);

    Dictionary selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Dictionary record);

    int updateByPrimaryKey(Dictionary record);

    @Select("Select * from t_sys_dictionary where dkey=#{dkey} order by ordernum")
    List<Dictionary> selectByDkey(String dkey);
    //联动
    @Select("Select * from t_sys_dictionary where dkey=#{dkey} and pvalue =#{pvalue} order by ordernum")
    List<Dictionary> selectByLinkage(@Param("dkey")String dkey,@Param("pvalue")String pvalue);

    //数据字典
    @Select("SELECT id,pvalue pid ,dvalue name,dkey,ordernum FROM t_sys_dictionary order by ordernum limit ${start},${size} ")
    List<HashMap<String, Object>> selectData(@Param("start") Integer start, @Param("size") Integer size);

    //查询三级id
    @Select("SELECT id from t_sys_dictionary WHERE pvalue in (SELECT id from t_sys_dictionary where pvalue = #{key}) ")
    List<HashMap<String, Object>> selectThrpk(String key);

    //查询二级id
    @Select("SELECT id from t_sys_dictionary where pvalue =#{key} ")
    List<HashMap<String, Object>> selectSecpk(String key);
}