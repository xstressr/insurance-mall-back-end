package com.sjy.insurance.service;

import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.entity.CustomerUser;
import java.util.List;

public interface CustomerService {

    List<CustomerUser> getAllCustomerUser();

    int login(LoginUser loginUser);

    int registerCustomer(CustomerUser customerUser);

    int updatePassword(LoginUser loginUser);
}
