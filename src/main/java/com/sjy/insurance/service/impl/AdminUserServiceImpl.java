package com.sjy.insurance.service.impl;

import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.dao.AdminUserMapper;
import com.sjy.insurance.entity.AdminUser;
import com.sjy.insurance.service.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminUserServiceImpl implements AdminUserService {

    @Autowired
    private AdminUserMapper adminUserMapper;

    @Override
    public List<AdminUser> queryAllAdminUser() {
        return adminUserMapper.queryAll();
    }

    @Override
    public int login(LoginUser loginUser)
    {
        return adminUserMapper.login(loginUser.getLoginName(), loginUser.getLoginPassword());
    }

    @Override
    public int register(AdminUser adminUser) {
        return adminUserMapper.insertSelective(adminUser);
    }
}
