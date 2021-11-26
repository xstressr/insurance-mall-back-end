package com.sjy.insurance.service.impl;

import com.sjy.insurance.dao.TopLineMapper;
import com.sjy.insurance.entity.TopLine;
import com.sjy.insurance.service.TopLineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopLineServiceImpl implements TopLineService {
    @Autowired
    private TopLineMapper topLineMapper;

    @Override
    public List<TopLine> queryAll() {
        return topLineMapper.selectAll();
    }

    @Override
    public int insert(TopLine topLine) {
        return topLineMapper.insertSelective(topLine);
    }
}
