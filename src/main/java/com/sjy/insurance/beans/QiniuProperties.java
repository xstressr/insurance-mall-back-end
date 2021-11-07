package com.sjy.insurance.beans;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "oss.qiniu")
@Data
public class QiniuProperties
{
    private String domain; // CDN域名
    private String accessKey; // ACCESS_KEY
    private String secretKey; // SECRET_KEY
    private String bucketName; // 空间名称
}