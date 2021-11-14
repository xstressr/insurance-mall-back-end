package com.sjy.insurance.controller;

import com.sjy.insurance.entity.GuarenteeSlip;
import com.sjy.insurance.service.GuarenteeSlipService;
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
@Api(tags = "保单")
@RequestMapping("/api/slips")
public class GuarenteeSlipController {

    @Autowired
    private GuarenteeSlipService guarenteeSlipService;

    @ApiOperation("查询所有保单")
    @GetMapping("/getAll")
    public Result getAll() {
        List<GuarenteeSlip> guarenteeSlipList = guarenteeSlipService.getAll();
        if (guarenteeSlipList.size() > 0) {
            return ResultGenerator.getSuccessResult("查询成功", guarenteeSlipList);
        }
        return ResultGenerator.getFailResult("没有保单");
    }

    //TODO:编写通过loginName查询
    @ApiOperation("通过登陆账号查询保单")
    @GetMapping("/getAllByLoginName")
    public Result getAllByLoginName(@RequestParam String loginName) {
        List<GuarenteeSlip> guarenteeSlipList = guarenteeSlipService.getAllByLoginName(loginName);
        if (guarenteeSlipList.size() > 0) {
            return ResultGenerator.getSuccessResult("查询成功", guarenteeSlipList);
        }
        return ResultGenerator.getFailResult("没有保单");
    }

    //TODO:编写插入删除
}
