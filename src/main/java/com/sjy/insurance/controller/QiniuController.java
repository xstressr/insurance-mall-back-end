package com.sjy.insurance.controller;

import com.sjy.insurance.service.impl.QiniuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@Api(tags = "七牛云上传")
@Slf4j
@RequestMapping("/api")
public class QiniuController {

    @Autowired
    private QiniuService qiniuService;

//    @RequestMapping(value = "/testUpload", method = RequestMethod.POST)
    @ApiOperation("封装七牛云API")
    @PostMapping(value = "/testUpload")
    public String uploadImage(@RequestParam MultipartFile file, String fileName) {

        if(file.isEmpty()) {
            return "error";
        }

        try {
            String fileUrl=qiniuService.saveImage(file);
            return "success, imageUrl = " + fileUrl;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "fail";
    }
}

