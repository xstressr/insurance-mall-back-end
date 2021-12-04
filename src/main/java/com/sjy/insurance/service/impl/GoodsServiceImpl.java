package com.sjy.insurance.service.impl;

import com.sjy.insurance.bo.GoodsAbbre;
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
    public List<GoodsAbbre> getAllGoodsAbbreByLoginUser(String loginName) {
        return goodsMapper.queryAllAbbreByCreateUser(loginName);
    }

    @Override
    public List<Goods> getAllGoods() {
        return goodsMapper.queryAllUpLimit();
    }

    @Override
    public int insertGoods(Goods goods) {
        return goodsMapper.insertSelective(goods);
    }

    @Override
    public Goods queryGoodsDetail(String goodName) {
        return goodsMapper.queryGoodsDetail(goodName);
    }


    @Override
    public int deleteGoods(Goods goods) {
        return 0;
    }

    @Override
    public int updateGoodStatus(int status, String goodName) {
        return goodsMapper.updateStatusByGoodName(status, goodName);
    }

    @Override
    public List<Goods> getAllByType(int type) {
        return goodsMapper.selectAllByGoodsCategoryId(type);
    }
}
