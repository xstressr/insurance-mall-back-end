package com.sjy.insurance.service.impl;

import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.dao.ThirdPartyMapper;
import com.sjy.insurance.entity.AdminUser;
import com.sjy.insurance.entity.ThirdParty;
import com.sjy.insurance.service.ThirdPartyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ThirdPartyServiceImpl implements ThirdPartyService {

    @Autowired
    private ThirdPartyMapper thirdPartyMapper;

    @Override
    public List<ThirdParty> queryAllThird() {
        return thirdPartyMapper.queryAll();
    }

    @Override
    public int login(LoginUser loginUser) {
        return thirdPartyMapper.login(loginUser.getLoginName(),loginUser.getLoginPassword());
    }

    @Override
    public int register(ThirdParty thirdParty) {
        return thirdPartyMapper.insertSelective(thirdParty);
    }
}
