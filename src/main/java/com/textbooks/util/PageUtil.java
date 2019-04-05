package com.textbooks.util;

import java.util.List;

/**
 * 这是一个分页工具类
 * T表示一个泛型
 * */
public class PageUtil<T> {
    //当前页索引
    private int pageIndex;
    //每页数量多少
    private int pageSize;
    //总记录数
    private int count;
    //总页数
    private int pageNumber;
    //要分页的内容
    public List<T> list;

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }


}