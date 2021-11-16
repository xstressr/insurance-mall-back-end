package com.sjy.insurance.service;

import com.sjy.insurance.entity.Goods;

import java.util.List;

public interface GoodsService {

    List<Goods> getAllGoods();

    List<Goods> getAllGoodsByLoginUser(String loginName);

    int updateGoodStatus(int status, String goodName);


    int insertGoods(Goods goods);

    int deleteGoods(Goods goods);

}
