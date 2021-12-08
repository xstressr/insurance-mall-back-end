package com.sjy.insurance.bo;

import lombok.Data;

import java.util.Date;

@Data
public class userSlipResponse {
    private String product;
    private Date createTime;
    private String guaranteeNo;
    private float price;

    private String name;
    private String idNo;
    private Integer age;
    private String career;
    private String mobile;
    private String email;
    private String address;
    private Double height;
    private Double weight;
    private String belongAcc;
}
