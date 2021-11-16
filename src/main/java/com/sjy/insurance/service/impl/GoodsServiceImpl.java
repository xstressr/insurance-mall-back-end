package com.sjy.insurance.service.impl;

import com.sjy.insurance.dao.GoodsMapper;
import com.sjy.insurance.entity.Goods;
import com.sjy.insurance.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public List<Goods> getAllGoodsByLoginUser(String loginName) {
        return goodsMapper.queryAllByCreateUser(loginName);
    }

    @Override
    public List<Goods> getAllGoods() {
        return goodsMapper.queryAll();
    }

    @Override
    public int insertGoods(Goods goods) {
        return goodsMapper.insertSelective(goods);
    }

    //TODO: 删除的话，我的思考是，保单不能删除，所以所谓的删除就是update某个status字段，如果这个字段为0就是没删，反之就是删除
    @Override
    public int deleteGoods(Goods goods) {
        return 0;
    }

    @Override
    public int updateGoodStatus(int status, String goodName) {
        return goodsMapper.updateStatusByGoodName(status, goodName);
    }
}
