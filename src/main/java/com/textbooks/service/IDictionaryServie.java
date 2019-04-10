package com.textbooks.service;

import com.textbooks.entity.Dictionary;

import java.util.List;

public interface IDictionaryServie {

    List<Dictionary> selectByDkey(String dkey);
}
