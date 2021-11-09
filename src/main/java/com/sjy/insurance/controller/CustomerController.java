package com.sjy.insurance.controller;


import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.entity.CustomerUser;
import com.sjy.insurance.service.CustomerService;
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
    public List<CustomerUser> getAll () {
        List<CustomerUser> customerUserList  = customerLoginService.getAllCustomerUser();
        return customerUserList;
    }

    @ApiOperation("顾客登陆")
    @PostMapping("/apis/customer/login")
    public String queryCustomer(@RequestBody LoginUser loginUser) {
        int result = customerLoginService.login(loginUser);
        return result > 0 ? "成功" : "失败";
    }

    @ApiOperation("顾客注册")
    @PostMapping("/apis/customer/register")
    public String registerCustomer(@RequestBody CustomerUser customerUser) {
        int result = customerLoginService.registerCustomer(customerUser);
        return result > 0 ? "成功" : "失败";
    }
}
