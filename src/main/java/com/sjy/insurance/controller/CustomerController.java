package com.sjy.insurance.controller;


import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.entity.CustomerUser;
import com.sjy.insurance.entity.Insurer;
import com.sjy.insurance.service.CustomerService;
import com.sjy.insurance.service.InsurerService;
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
@Api(tags = "顾客API")
@RequestMapping("/api/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerLoginService;

    @Autowired
    private InsurerService insurerService;

    @ApiOperation("查询全部顾客")
    @GetMapping("/select/all")
    public Result getAll () {
        List<CustomerUser> customerUserList  = customerLoginService.getAllCustomerUser();
        if (customerUserList.size() > 0) {
            return ResultGenerator.getSuccessResult("查询成功", customerUserList);
        }
        return ResultGenerator.getFailResult("没有顾客");
    }

    @ApiOperation("顾客登陆")
    @PostMapping("/login")
    public Result queryCustomer(@RequestBody LoginUser loginUser) {
        int result = customerLoginService.login(loginUser);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功");
        }
        return ResultGenerator.getFailResult("没有此用户");
    }

    @ApiOperation("顾客注册")
    @PostMapping("/register")
    public Result registerCustomer(@RequestBody CustomerUser customerUser) {
        int result = customerLoginService.registerCustomer(customerUser);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功注册", customerUser);
        }
        return ResultGenerator.getFailResult("没有注册成功");
    }

    @ApiOperation("密码修改")
    @PostMapping("/updatePass")
    public Result updatePassword(@RequestBody LoginUser loginUser) {
        int result = customerLoginService.updatePassword(loginUser);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功更新密码");
        }
        return ResultGenerator.getFailResult("没有更新成功");
    }

    @ApiOperation("添加保单持有者")
    @PostMapping("/registerInsurer")
    public Result registerInsurer(@RequestBody Insurer insurer) {
        int result = insurerService.insertInsurer(insurer);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功注册", insurer);
        }
        return ResultGenerator.getFailResult("没有注册成功");
    }

    @ApiOperation("查询账户下所有的保单持有者")
    @GetMapping("/select/allInsurer")
    public Result getAllInsurer (@RequestParam String belongAcc) {
        List<Insurer> insurerList  = insurerService.selectInsurerOfAccount(belongAcc);
        if (insurerList.size() > 0) {
            return ResultGenerator.getSuccessResult("查询成功", insurerList);
        }
        return ResultGenerator.getFailResult("没有保单持有人");
    }

}
