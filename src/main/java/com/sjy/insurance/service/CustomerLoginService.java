package com.sjy.insurance.service;

import com.sjy.insurance.entity.CustomerUser;
import java.util.List;

public interface CustomerLoginService {
    /**
     * 获得全部顾客信息
     * @return
     */
    List<CustomerUser> getAllCustomerUser();

    int getCustomerByLoginNameAndPassword(String loginName, String loginPassword);

}
