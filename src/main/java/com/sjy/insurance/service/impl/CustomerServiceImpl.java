package com.sjy.insurance.service.impl;

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
    public int getCustomerByLoginNameAndPassword(String loginName, String loginPassword) {
        return customerUserMapper.login(loginName, loginPassword);
    }
    @Override
    public int registerCustomer(CustomerUser customerUser) {
        return customerUserMapper.insertSelective(customerUser);
    }
}
