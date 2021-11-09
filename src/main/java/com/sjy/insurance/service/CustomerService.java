package com.sjy.insurance.service;

import com.sjy.insurance.entity.CustomerUser;
import java.util.List;

public interface CustomerService {
    /**
     * 获得全部顾客信息
     * @return
     */
    List<CustomerUser> getAllCustomerUser();

    /**
     * 通过登录名、密码查询用户
     * @param loginName
     * @param loginPassword
     * @return
     */
    int getCustomerByLoginNameAndPassword(String loginName, String loginPassword);

    /**
     * 注册用户
     * @param customerUser
     * @return
     */
    int registerCustomer(CustomerUser customerUser);
}
