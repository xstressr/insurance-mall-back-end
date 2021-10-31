package com.sjy.equipment_manager_system.service.impl;

import com.sjy.equipment_manager_system.dao.MaintainPlanMapper;
import com.sjy.equipment_manager_system.entity.MaintainPlan;
import com.sjy.equipment_manager_system.service.MaintainPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaintainPlanServiceImpl implements MaintainPlanService {

    @Autowired
    private MaintainPlanMapper maintainPlanMapper;

    @Override
    public int insert(MaintainPlan maintainPlan) {
        return maintainPlanMapper.insertSelective(maintainPlan);
    }

    @Override
    public List<MaintainPlan> selectAllMaintainPlan() {
        return maintainPlanMapper.selectAll();
    }

    @Override
    public MaintainPlan selectByMaintainPlanId(String maintainPlanId) {
        return maintainPlanMapper.selectByPrimaryKey(maintainPlanId);
    }
}
