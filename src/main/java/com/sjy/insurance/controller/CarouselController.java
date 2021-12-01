package com.sjy.insurance.controller;

import com.sjy.insurance.entity.Carousel;
import com.sjy.insurance.service.CarouselService;
import com.sjy.insurance.util.Result;
import com.sjy.insurance.util.ResultGenerator;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Slf4j
@Api(tags = "最火产品API")
@RequestMapping("/api/carousel")
public class CarouselController {

    @Autowired
    private CarouselService carouselService;

    @ApiOperation("获取列表")
    @GetMapping("/queryAll")
    public Result queryAll() {
        List<Carousel> carouselList = carouselService.queryAll();
        if(carouselList.size() > 0) {
            return ResultGenerator.getSuccessResult("最火产品如下", carouselList);
        }
        return ResultGenerator.getFailResult("没有最火产品");
    }

}
