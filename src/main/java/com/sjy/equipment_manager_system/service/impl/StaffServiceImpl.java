package com.sjy.equipment_manager_system.service.impl;

import com.sjy.equipment_manager_system.dao.StaffMapper;
import com.sjy.equipment_manager_system.entity.Staff;
import com.sjy.equipment_manager_system.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {

    @Autowired
    private StaffMapper staffMapper;

    @Override
    public Staff selectByStaffName(String staffName, String password) {
        return staffMapper.selectByStaffName(staffName, password);
    }

    @Override
    public int insert(Staff staff) {
        return staffMapper.insert(staff);
    }

    @Override
    public int deleteByStaffName(String staffName) {
        return staffMapper.deleteByStaffName(staffName);
    }

    @Override
    public List<Staff> selectAll() {
        return staffMapper.selectAll();
    }
}
