package com.sjy.insurance.service.impl;

import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.dao.CustomerUserMapper;
import com.sjy.insurance.entity.CustomerUser;
import com.sjy.insurance.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerUserMapper customerUserMapper;

    @Override
    public List<CustomerUser> getAllCustomerUser() {
        return customerUserMapper.queryAll();
    }

    @Override
    public int login(LoginUser loginUser) {
        return customerUserMapper.login(loginUser.getLoginName(), loginUser.getLoginPassword());
    }
    @Override
    public int registerCustomer(CustomerUser customerUser) {
        return customerUserMapper.insertSelective(customerUser);
    }

    @Override
    public int updatePassword(LoginUser loginUser) {
        return customerUserMapper.updateLoginPassword(loginUser.getLoginPassword(), loginUser.getLoginName());
    }
}
