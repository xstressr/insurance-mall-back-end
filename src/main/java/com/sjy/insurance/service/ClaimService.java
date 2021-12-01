package com.sjy.insurance.service;

import com.sjy.insurance.entity.Claim;

import java.util.List;

public interface ClaimService {
    int insert(Claim claim);

    int updateStatus(int status, String resolver , String goodName);

    List<Claim> queryAllByName(String name);

    List<Claim> queryAllByCompany(String name);
}
