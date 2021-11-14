package com.sjy.insurance.service.impl;

import com.sjy.insurance.dao.GuarenteeSlipMapper;
import com.sjy.insurance.entity.GuarenteeSlip;
import com.sjy.insurance.service.GuarenteeSlipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GuarenteeSlipServiceImpl implements GuarenteeSlipService {

    @Autowired
    private GuarenteeSlipMapper guarenteeSlipMapper;

    @Override
    public List<GuarenteeSlip> getAll() {
        return guarenteeSlipMapper.queryAll();
    }

    @Override
    public List<GuarenteeSlip> getAllByUserId(int id) {
        return guarenteeSlipMapper.selectByPrimaryKey(id);
    }

    @Override
    public int insertGuarenteeSlip(GuarenteeSlip guarenteeSlip) {
        return guarenteeSlipMapper.insertSelective(guarenteeSlip);
    }

    @Override
    public int deleteGuarenteeSlip(int id) {
        return guarenteeSlipMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<GuarenteeSlip> getAllByLoginName(String loginName) {
        return guarenteeSlipMapper.queryAllByOwner(loginName);
    }
}
