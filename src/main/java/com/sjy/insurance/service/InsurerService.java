package com.sjy.insurance.service;

import com.sjy.insurance.entity.Insurer;

import java.util.List;

public interface InsurerService {
    int insertInsurer(Insurer insurer);

    List<Insurer> selectInsurerOfAccount(String accountName);


}
