package com.sjy.equipment_manager_system.service.impl;

import com.sjy.equipment_manager_system.mbg.mapper.TUserMapper;
import com.sjy.equipment_manager_system.mbg.model.TUser;
import com.sjy.equipment_manager_system.service.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class userImpl implements user {

    @Autowired
    private TUserMapper tUserMapper;

    @Override
    public int insert(TUser user) {
        return tUserMapper.insert(user) ;
    }

    @Override
    public int deleteByPrimaryKey(int id) {
        return  tUserMapper.deleteByPrimaryKey(id);
    }

    @Override
    public TUser selectByPrimaryKey(int id) {
        return tUserMapper.selectByPrimaryKey(id);
    }
}
