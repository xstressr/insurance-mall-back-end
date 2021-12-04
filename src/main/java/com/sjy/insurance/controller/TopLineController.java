package com.sjy.insurance.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sjy.insurance.dao.TopLineMapper;
import com.sjy.insurance.entity.Goods;
import com.sjy.insurance.entity.TopLine;
import com.sjy.insurance.service.TopLineService;
import com.sjy.insurance.util.Result;
import com.sjy.insurance.util.ResultGenerator;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@Api(tags = "顶部消息栏API")
@RequestMapping("/api/topline")
public class TopLineController {

    @Autowired
    private TopLineService topLineService;

    @Autowired
    private TopLineMapper topLineMapper;


    @ApiOperation("查询全部")
    @GetMapping("/queryAll")
    public Result queryAll() {
        List<TopLine> topLineList = topLineService.queryAll();
        if (topLineList.size() > 0) {
            return ResultGenerator.getSuccessResult(topLineList);
        }
        return ResultGenerator.getSuccessResult("没有消息");
    }

    @ApiOperation("插入消息")
    @PostMapping("/insert")
    public Result insert(@RequestBody TopLine topLine) {
        int result =  topLineService.insert(topLine);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("成功插入", topLine);
        }
        return ResultGenerator.getFailResult("没有插入成功");
    }

    @ApiOperation("分页查询")
    @GetMapping("/getTopList")
    public PageInfo<TopLine> getGoodsList(@ApiParam(value="页码",required = true, example = "1") @RequestParam int pageNum,
                                    @ApiParam(value="单页数量",required = true, example = "5") @RequestParam int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<TopLine> topLines = topLineMapper.findAll();
        PageInfo<TopLine> pageInfo = new PageInfo<>(topLines);
        return pageInfo;
    }

}
