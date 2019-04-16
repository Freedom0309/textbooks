package com.textbooks.service.impl;

import com.textbooks.dao.NoticeMapper;
import com.textbooks.entity.Notice;
import com.textbooks.service.INoticeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service("noticeService")
public class NoticeService implements INoticeService {
    @Resource
    private NoticeMapper noticeMapper;

    @Override
    public int deleteByPrimaryKey(String id) {
        return noticeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Notice notice) {
        return noticeMapper.insert(notice);
    }

    @Override
    public int insertSelective(Notice notice) {
        return noticeMapper.insertSelective(notice);
    }

    @Override
    public Notice selectByPrimaryKey(String id) {
        return noticeMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Notice notice) {
        return noticeMapper.updateByPrimaryKeySelective(notice);
    }

    @Override
    public int updateByPrimaryKey(Notice notice) {
        return noticeMapper.updateByPrimaryKey(notice);
    }

    @Override
    public int getcount() {
        return noticeMapper.getcount();
    }

    @Override
    public List<HashMap<String, Object>> getNoticeByPage(Integer page, Integer size) {
        if(page == null || page <= 0){
            page = 1;
        }
        if (size == null || size <= 0){
            size = 10;
        }
        Integer start = (page - 1) * size;
        return noticeMapper.getNoticeByPage(start,size);
    }

    @Override
    public Notice selectByMajorBookKey(String majorbookid) {
        return noticeMapper.selectByMajorBookKey(majorbookid);
    }
}
