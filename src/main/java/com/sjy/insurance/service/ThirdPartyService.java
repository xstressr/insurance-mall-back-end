package com.sjy.insurance.service;

import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.entity.AdminUser;
import com.sjy.insurance.entity.ThirdParty;

import java.util.List;

public interface ThirdPartyService {

    List<ThirdParty> queryAllThird();

    int login(LoginUser loginUser);

    int register(ThirdParty thirdParty);
}
