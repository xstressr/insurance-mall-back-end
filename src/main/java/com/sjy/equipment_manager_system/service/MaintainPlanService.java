package com.sjy.equipment_manager_system.service;

import com.sjy.equipment_manager_system.entity.MaintainPlan;

import java.util.List;

public interface MaintainPlanService {
    int insert(MaintainPlan maintainPlan);

    List<MaintainPlan> selectAllMaintainPlan();

    MaintainPlan selectByMaintainPlanId(String maintainPlanId);
}
