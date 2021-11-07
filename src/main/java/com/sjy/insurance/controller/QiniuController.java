package com.sjy.insurance.controller;

import com.sjy.insurance.service.impl.QiniuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
public class QiniuController {

    @Autowired
    private QiniuService qiniuService;

//    @RequestMapping(value = "/testUpload", method = RequestMethod.POST)
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

