package com.sjy.insurance.service;

import com.sjy.insurance.entity.Goods;

import java.util.List;

public interface GoodsService {

    List<Goods> getAllGoods();

    int insertGoods(Goods goods);

    int deleteGoods(Goods goods);

}
