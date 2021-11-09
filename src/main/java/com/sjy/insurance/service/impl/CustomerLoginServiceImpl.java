package com.sjy.insurance.service.impl;

import com.sjy.insurance.dao.CustomerUserMapper;
import com.sjy.insurance.entity.CustomerUser;
import com.sjy.insurance.service.CustomerLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerLoginServiceImpl implements CustomerLoginService {

    @Autowired
    private CustomerUserMapper customerUserMapper;

    @Override
    public List<CustomerUser> getAllCustomerUser() {
        return customerUserMapper.selectAll();
    }

    @Override
    public int getCustomerByLoginNameAndPassword(String loginName, String loginPassword) {
        return customerUserMapper.selectByLoginNameAndLoginPassword(loginName, loginPassword);
    }
}
