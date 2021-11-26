package com.sjy.insurance.service;

import com.sjy.insurance.entity.TopLine;

import java.util.List;

public interface TopLineService {
    List<TopLine> queryAll();

    int insert(TopLine topLine);
}
