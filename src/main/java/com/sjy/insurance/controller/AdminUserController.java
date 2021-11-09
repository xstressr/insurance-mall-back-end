package com.sjy.insurance.controller;

import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.entity.AdminUser;
import com.sjy.insurance.service.AdminUserService;
import com.sjy.insurance.util.Result;
import com.sjy.insurance.util.ResultGenerator;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Slf4j
@Api(tags = "管理员API")
public class AdminUserController {
    @Autowired
    private AdminUserService adminUserService;

    @ApiOperation("管理员登陆")
    @PostMapping("/apis/admin/login")
    public Result login(@RequestBody LoginUser loginUser) {
        int result = adminUserService.login(loginUser);
//        return result > 0 ? "成功" : "失败";
        if(result > 0) {
            return ResultGenerator.genSuccessResult("登陆成功");
        }
        return ResultGenerator.genErrorResult(500, "没有这用户名");
    }

    @ApiOperation("管理员注册")
    @PostMapping("/apis/admin/register")
    public String registerAdminUser(@RequestBody AdminUser adminUser) {
        int result =  adminUserService.register(adminUser);
        return result > 0 ? "成功" : "失败";
    }


    @ApiOperation("管理员所有查询")
    @GetMapping("/apis/admin/queryAll")
    public Result queryAll() {
        List<AdminUser> adminUserList = adminUserService.queryAllAdminUser();
        if (adminUserList.size() > 0) {
            return ResultGenerator.genSuccessResult(adminUserList);
        }
        return ResultGenerator.genSuccessResult("没有用户");
    }
}
