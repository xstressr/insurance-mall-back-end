package com.sjy.insurance.service;

import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.entity.AdminUser;
import java.util.List;

public interface AdminUserService {

    /**
     * 查询所有管理员用户
     * @return
     */
    List<AdminUser> queryAllAdminUser();

    int login(LoginUser loginUser);

    int register(AdminUser adminUser);
}
