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
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@Api(tags = "管理员API")
@RequestMapping("/api/admin")
public class AdminUserController {
    @Autowired
    private AdminUserService adminUserService;

    @ApiOperation("管理员登陆")
    @PostMapping("/login")
    public Result login(@RequestBody LoginUser loginUser) {
        int result = adminUserService.login(loginUser);
//        return result > 0 ? "成功" : "失败";
        if(result > 0) {
            return ResultGenerator.getSuccessResult("登陆成功");
        }
        return ResultGenerator.getErrorResult(500, "没有这用户名");
    }

    @ApiOperation("管理员注册")
    @PostMapping("/register")
    public Result registerAdminUser(@RequestBody AdminUser adminUser) {
        int result =  adminUserService.register(adminUser);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功注册", adminUser);
        }
        return ResultGenerator.getFailResult("没有注册成功");
    }


    @ApiOperation("管理员所有查询")
    @GetMapping("/queryAll")
    public Result queryAll() {
        List<AdminUser> adminUserList = adminUserService.queryAllAdminUser();
        if (adminUserList.size() > 0) {
            return ResultGenerator.getSuccessResult(adminUserList);
        }
        return ResultGenerator.getSuccessResult("没有用户");
    }
}
