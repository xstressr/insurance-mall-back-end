package com.sjy.equipment_manager_system.service.impl;

import com.sjy.equipment_manager_system.dao.MaintainMapper;
import com.sjy.equipment_manager_system.entity.Maintain;
import com.sjy.equipment_manager_system.service.MaintainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaintainServiceImpl implements MaintainService {

    @Autowired
    private MaintainMapper maintainMapper;

    @Override
    public int insert(Maintain maintain) {
        return maintainMapper.insertSelective(maintain);
    }

    @Override
    public Maintain selectByMaintainId(String maintainId) {
        return maintainMapper.selectByPrimaryKey(maintainId);
    }

    @Override
    public List<Maintain> selectAllMaintain() {
        return maintainMapper.selectAll();
    }
}
