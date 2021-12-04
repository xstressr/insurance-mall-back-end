package com.sjy.insurance.service;

import com.github.pagehelper.Page;
import com.sjy.insurance.bo.GoodsAbbre;
import com.sjy.insurance.entity.Goods;

import java.util.List;

public interface GoodsService {

    List<Goods> getAllGoods();

    List<Goods> getAllGoodsByLoginUser(String loginName);

    List<GoodsAbbre> getAllGoodsAbbreByLoginUser(String loginName);

    int updateGoodStatus(int status, String goodName);

    int insertGoods(Goods goods);

    int deleteGoods(Goods goods);

    Goods queryGoodsDetail(String goodName);

    List<Goods> getAllByType(int type);

//    Page<Goods> findAll(int page, int size);


}
