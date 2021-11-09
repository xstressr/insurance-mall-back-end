package com.sjy.insurance.controller;


import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.entity.CustomerUser;
import com.sjy.insurance.service.CustomerService;
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
@Api(tags = "顾客API")
public class CustomerController {

    @Autowired
    private CustomerService customerLoginService;

    @ApiOperation("查询全部顾客")
    @GetMapping("/apis/customer/select/all")
    public Result getAll () {
        List<CustomerUser> customerUserList  = customerLoginService.getAllCustomerUser();
        if (customerUserList.size() > 0) {
            return ResultGenerator.getSuccessResult("查询成功", customerUserList);
        }
        return ResultGenerator.getFailResult("没有顾客");
    }

    @ApiOperation("顾客登陆")
    @PostMapping("/apis/customer/login")
    public Result queryCustomer(@RequestBody LoginUser loginUser) {
        int result = customerLoginService.login(loginUser);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功");
        }
        return ResultGenerator.getFailResult("没有此用户");
    }

    @ApiOperation("顾客注册")
    @PostMapping("/apis/customer/register")
    public Result registerCustomer(@RequestBody CustomerUser customerUser) {
        int result = customerLoginService.registerCustomer(customerUser);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功注册", customerUser);
        }
        return ResultGenerator.getFailResult("没有注册成功");
    }
}
