package com.textbooks.dao;

import com.textbooks.entity.Notice;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.HashMap;
import java.util.List;

public interface NoticeMapper {
    int deleteByPrimaryKey(String id);

    int insert(Notice record);

    int insertSelective(Notice record);

    @Select("select * from t_app_notice where majorbookid=#{majorbookid}")
    Notice selectByMajorBookKey(String majorbookid);

    Notice selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKey(Notice record);

    @Select("select count(*) from t_app_notice")
    int getcount();

    List<HashMap<String, Object>>  getNoticeByPage(@Param("start") Integer start, @Param("size") Integer size);


    List<HashMap<String, Object>> selectMonth();

    List<HashMap<String, Object>>  selectbyMon(@Param("mon") String mon);
}