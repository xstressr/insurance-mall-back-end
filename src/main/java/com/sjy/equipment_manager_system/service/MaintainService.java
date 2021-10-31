package com.sjy.equipment_manager_system.service;

import com.sjy.equipment_manager_system.entity.Maintain;

import java.util.List;

public interface MaintainService {

    int insert(Maintain maintain);


    Maintain selectByMaintainId(String maintainId);

    List<Maintain> selectAllMaintain();
}
