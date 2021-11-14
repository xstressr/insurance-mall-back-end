package com.sjy.insurance.service;

import com.sjy.insurance.entity.GuarenteeSlip;

import java.util.List;

public interface GuarenteeSlipService {

    //TODO:未写
    List<GuarenteeSlip> getAll();

    List<GuarenteeSlip> getAllByUserId(int id);

    int insertGuarenteeSlip(GuarenteeSlip guarenteeSlip);

    int deleteGuarenteeSlip(int id);

    List<GuarenteeSlip> getAllByLoginName(String loginName);
}
