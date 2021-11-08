package com.sjy.insurance.controller;


import com.sjy.insurance.entity.CustomerUser;
import com.sjy.insurance.service.CustomerLoginService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Slf4j
@Api(tags = "顾客API")
public class CustomerLogin {

    @Autowired
    private CustomerLoginService customerLoginService;

    @ApiOperation("查询全部用户")
    @GetMapping("/select/all")
    public List<CustomerUser> getAll () {
        List<CustomerUser> customerUserList  = customerLoginService.getAllCustomerUser();
        return customerUserList;
    }
}
