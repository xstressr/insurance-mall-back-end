package com.sjy.equipment_manager_system.service;

import com.sjy.equipment_manager_system.entity.Maintain;
import com.sjy.equipment_manager_system.entity.Staff;

import java.util.List;

public interface StaffService {
    Staff selectByStaffName(String name, String password);

    int insert(Staff staff);

    int deleteByStaffName(String staffName);

    List<Staff> selectAll();
}
