package com.sjy.insurance.controller;

import com.sjy.insurance.service.impl.QiniuService;
import com.sjy.insurance.util.Result;
import com.sjy.insurance.util.ResultGenerator;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@RestController
@Api(tags = "七牛云上传")
@Slf4j
@RequestMapping("/api")
public class QiniuController {

    @Autowired
    private QiniuService qiniuService;

//    @RequestMapping(value = "/testUpload", method = RequestMethod.POST)
    @ApiOperation("封装七牛云API")
    @CrossOrigin
    @PostMapping(value = "/testUpload")
    public Result uploadImage(@RequestParam MultipartFile file) {
//        Map<String, String> map = new HashMap<>(2);

        if(file.isEmpty()) {
            return ResultGenerator.getFailResult("传入文件为空");
        }

        try {
            String fileUrl=qiniuService.saveImage(file);

//            map.put("status", "success");
//            map.put("imageUrl", fileUrl);
            return ResultGenerator.getSuccessResult("上传成功", fileUrl);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ResultGenerator.getFailResult("莫名错误");

    }
}

