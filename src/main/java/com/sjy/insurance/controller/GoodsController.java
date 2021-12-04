package com.sjy.insurance.controller;

import com.sjy.insurance.bo.GoodsAbbre;
import com.sjy.insurance.entity.Goods;
import com.sjy.insurance.service.GoodsService;
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
@Api(tags = "商品详情")
@RequestMapping("/api/goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @ApiOperation("获取所有上架产品")
    @GetMapping("/getAll")
    public Result getAll() {
        List<Goods> goodsList = goodsService.getAllGoods();
        if (goodsList.size() != 0) {
            return ResultGenerator.getSuccessResult(goodsList);
        }
        return ResultGenerator.getFailResult("没有产品");
    }

    @ApiOperation("获取不同种类的产品")
    @GetMapping("/getAllByType")
    public Result getAllByType(@RequestParam int type) {
        List<Goods> goodsList = goodsService.getAllByType(type);
        if (goodsList.size() != 0) {
            return ResultGenerator.getSuccessResult("种类"+type+"的产品如下: ",goodsList);
        }
        return ResultGenerator.getFailResult("没有产品");
    }

    @ApiOperation("通过登陆用户获取所有产品")
    @GetMapping("/getAllByloginName")
    public Result getAllByLoginName(@RequestParam String loginName) {
        List<Goods> goodsList = goodsService.getAllGoodsByLoginUser(loginName);
        if (goodsList.size() != 0) {
            return ResultGenerator.getSuccessResult("用户：" + loginName + " 产品如下",goodsList);
        }
        return ResultGenerator.getFailResult("没有产品");
    }

    @ApiOperation("通过登陆用户获取所有产品的缩略信息")
    @GetMapping("/getAllAbbreByloginName")
    public Result getAllAbbreByLoginName(@RequestParam String loginName) {
        List<GoodsAbbre> goodsList = goodsService.getAllGoodsAbbreByLoginUser(loginName);
        if (goodsList.size() != 0) {
            return ResultGenerator.getSuccessResult("用户：" + loginName + " 产品如下",goodsList);
        }
        return ResultGenerator.getFailResult("没有产品");
    }

    @ApiOperation("插入产品")
    @PostMapping("/insert")
    public Result insertGood(@RequestBody Goods goods) {
        int result = goodsService.insertGoods(goods);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("插入成功", goods);
        }
        return ResultGenerator.getFailResult("插入失败");
    }

    @ApiOperation("修改产品状态")
    @GetMapping("/updateStatus")
    public Result updateGoodStatus(@RequestParam Integer status,
                                   @RequestParam String goodName)
    {
        int result = goodsService.updateGoodStatus(status, goodName);
        if (result > 0) {
            return ResultGenerator.getSuccessResult("修改状态成功");
        }
        return ResultGenerator.getFailResult("修改状态失败");
    }

    @ApiOperation("查询保险产品详情")
    @GetMapping("/detail")
    public Result getGoodDetails(@RequestParam String goodName) {
        log.info(goodName);
        Goods goods = goodsService.queryGoodsDetail(goodName);
        return ResultGenerator.getSuccessResult("产品详情如下", goods);
    }
}
