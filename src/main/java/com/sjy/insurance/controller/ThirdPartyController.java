package com.sjy.insurance.controller;

import com.sjy.insurance.bo.LoginUser;
import com.sjy.insurance.entity.AdminUser;
import com.sjy.insurance.entity.ThirdParty;
import com.sjy.insurance.service.AdminUserService;
import com.sjy.insurance.service.ThirdPartyService;
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
@Api(tags = "第三方API")
public class ThirdPartyController {
    @Autowired
    private ThirdPartyService thirdPartyService;

    @ApiOperation("第三方登陆")
    @PostMapping("/apis/third/login")
    public Result login(@RequestBody LoginUser loginUser) {
        int result = thirdPartyService.login(loginUser);
        if(result > 0) {
            return ResultGenerator.getSuccessResult("登陆成功");
        }
        return ResultGenerator.getErrorResult(500, "没有这用户名");
    }

    @ApiOperation("第三方注册")
    @PostMapping("/apis/third/register")
    public String register(@RequestBody ThirdParty thirdParty) {
        int result =  thirdPartyService.register(thirdParty);
        return result > 0 ? "成功" : "失败";
    }


    @ApiOperation("第三方所有查询")
    @GetMapping("/apis/third/queryAll")
    public Result queryAll() {
        List<ThirdParty> thirdPartyList = thirdPartyService.queryAllThird();
        if (thirdPartyList.size() > 0) {
            return ResultGenerator.getSuccessResult(thirdPartyList);
        }
        return ResultGenerator.getSuccessResult("没有用户");
    }
}
