package com.sjy.equipment_manager_system.service.impl;

import com.sjy.equipment_manager_system.dao.RepairMapper;
import com.sjy.equipment_manager_system.entity.Repair;
import com.sjy.equipment_manager_system.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RepairServiceImpl implements RepairService {

    @Autowired
    private RepairMapper repairMapper;

    @Override
    public int insertRepairBill(Repair repair) {
        return repairMapper.insertSelective(repair);

    }

    @Override
    public List<Repair> selectAllRepair() {
        return repairMapper.selectAll();
    }

    @Override
    public Repair selectByRepairNo(String RepairNo) {
        return repairMapper.selectByPrimaryKey(RepairNo);
    }
}
