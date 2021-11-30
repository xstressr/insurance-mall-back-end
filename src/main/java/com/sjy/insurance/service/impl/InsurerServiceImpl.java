package com.sjy.insurance.service.impl;

import com.sjy.insurance.dao.InsurerMapper;
import com.sjy.insurance.entity.Insurer;
import com.sjy.insurance.service.InsurerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InsurerServiceImpl implements InsurerService {

    @Autowired
    private InsurerMapper insurerMapper;

    @Override
    public int insertInsurer(Insurer insurer) {
        return insurerMapper.insertSelective(insurer);
    }

    @Override
    public List<Insurer> selectInsurerOfAccount(String accountName) {
        return insurerMapper.selectAllInsurer(accountName);
    }
}
