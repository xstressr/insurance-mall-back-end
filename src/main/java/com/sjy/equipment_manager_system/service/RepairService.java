package com.sjy.equipment_manager_system.service;

import com.sjy.equipment_manager_system.entity.Repair;

import java.util.List;

public interface RepairService {

    int insertRepairBill (Repair repair);

    List<Repair> selectAllRepair ();

    Repair selectByRepairNo (String RepairNo);
}
