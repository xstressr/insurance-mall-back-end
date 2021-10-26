package com.sjy.equipment_manager_system.service;

import com.sjy.equipment_manager_system.entity.userDAO;

public interface User {

    int deleteByPrimaryKey(Integer id);

    userDAO selectByUserName(String name);

}
