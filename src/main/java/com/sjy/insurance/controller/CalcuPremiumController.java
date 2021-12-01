package com.sjy.insurance.controller;

import com.sjy.insurance.service.CalculateService;
import com.sjy.insurance.util.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@Api(tags = "计算保费API")
@RequestMapping("/api/calcu")
public class CalcuPremiumController {

    @Autowired
    private CalculateService calculateService;

    @ApiOperation("保费通用计算接口")
    @GetMapping("/common")
    public float calcu(@ApiParam(value="初始价格",required = true, example = "1000") @RequestParam int baseCount,
                       @ApiParam(value="因子：年龄",required = true, example = "60") @RequestParam int age,
                       @ApiParam(value="因子：职业类型",required = true, example = "1") @RequestParam int occupationType,
                       @ApiParam(value="因子：保险类型",required = true, example = "1") @RequestParam int insuranceType) {
        return calculateService.calcuPremium(baseCount, occupationType, insuranceType, age);
    }

}
