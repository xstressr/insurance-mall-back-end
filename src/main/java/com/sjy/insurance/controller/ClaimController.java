package com.sjy.insurance.controller;


import com.sjy.insurance.entity.Claim;
import com.sjy.insurance.entity.Goods;
import com.sjy.insurance.service.ClaimService;
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
@Api(tags = "报案API")
@RequestMapping("/api/claim")
public class ClaimController {
    @Autowired
    private ClaimService claimService;

    @ApiOperation("进行报案")
    @PostMapping("/insert")
    public Result insert(@RequestBody Claim claim) {
        int result = claimService.insert(claim);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功注册", claim);
        }
        return ResultGenerator.getFailResult("没有注册成功");
    }

    @ApiOperation("修改报案状态")
    @GetMapping("/updateStatus")
    public Result updateStatus(@RequestParam Integer status,
                                   @RequestParam String resolver,
                                   @RequestParam String guaranteeNo)
    {
        int result = claimService.updateStatus(status, resolver, guaranteeNo);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("修改状态成功");
        }
        return ResultGenerator.getFailResult("修改状态失败");
    }

    @ApiOperation("通过用户获取所有报案")
    @GetMapping("/getAllByloginName")
    public Result getAllByLoginName(@RequestParam String loginName) {
        List<Claim> claimList = claimService.queryAllByName(loginName);
        if (claimList.size() != 0) {
            return ResultGenerator.getSuccessResult("用户：" + loginName + " 报案如下",claimList);
        }
        return ResultGenerator.getFailResult("没有产品");
    }
}
