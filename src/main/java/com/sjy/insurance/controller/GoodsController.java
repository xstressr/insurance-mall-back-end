package com.sjy.insurance.controller;

import com.sjy.insurance.entity.Goods;
import com.sjy.insurance.service.GoodsService;
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
@Api(tags = "商品详情")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @ApiOperation("获取所有产品")
    @GetMapping("/apis/goods/getAll")
    public Result getAll() {
        List<Goods> goodsList = goodsService.getAllGoods();
        if (goodsList.size() != 0) {
            return ResultGenerator.getSuccessResult(goodsList);
        }
        return ResultGenerator.getFailResult("没有产品");
    }

    @ApiOperation("插入产品")
    @PostMapping("/apis/goods/insert")
    public Result insertGood(@RequestBody Goods goods) {
        int result = goodsService.insertGoods(goods);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("插入成功", goods);
        }
        return ResultGenerator.getFailResult("插入失败");
    }
}
