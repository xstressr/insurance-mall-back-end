package com.sjy.insurance.controller;


import com.sjy.insurance.entity.CustomerUser;
import com.sjy.insurance.service.CustomerLoginService;
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
public class CustomerLogin {

    @Autowired
    private CustomerLoginService customerLoginService;

    @GetMapping("/select/all")
    public List<CustomerUser> getAll () {
        List<CustomerUser> customerUserList  = customerLoginService.getAllCustomerUser();
        return customerUserList;
    }
}
