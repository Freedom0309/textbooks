package com.textbooks.service;

import com.textbooks.entity.Notice;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface INoticeService {
    int deleteByPrimaryKey(String id);

    int insert(Notice record);

    int insertSelective(Notice record);

    Notice selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKey(Notice record);

    int getcount();

    List<HashMap<String, Object>> getNoticeByPage(Integer start, Integer size);

    Notice selectByMajorBookKey(String majorbookid);

    List<HashMap<String, Object>> getfrontNotice();


}
