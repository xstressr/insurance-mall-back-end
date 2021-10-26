package com.sjy.equipment_manager_system.service.impl;

import com.sjy.equipment_manager_system.dao.userDAOMapper;
import com.sjy.equipment_manager_system.entity.userDAO;
import com.sjy.equipment_manager_system.service.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserImpl implements User {

    @Autowired
    private userDAOMapper userDAOMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return userDAOMapper.deleteByPrimaryKey(id);
    }

    @Override
    public userDAO selectByUserName(String name) {
        return userDAOMapper.selectByUserName(name);
    }
}
