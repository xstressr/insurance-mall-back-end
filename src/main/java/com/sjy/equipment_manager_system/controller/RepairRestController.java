package com.sjy.equipment_manager_system.controller;

import com.sjy.equipment_manager_system.entity.Repair;
import com.sjy.equipment_manager_system.service.RepairService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Slf4j
@RestController
@Api(tags = "维修")
public class RepairRestController {

    @Autowired
    private RepairService repairService;

    @ApiOperation("维修单提交")
    @PostMapping("/api/repair/submit")
    public String submitRepairBill(@RequestBody Repair repair) {
        repair.setRepairSubmitTime(new Date());
        int result = repairService.insertRepairBill(repair);
        return result > 0 ? "成功" : "失败";
    }

    @ApiOperation("查询所有的维修单")
    @GetMapping("/api/repair/searchlist")
    public List<Repair> searchRepairBill() {
        List<Repair> repairList = repairService.selectAllRepair();
        return repairList;
    }

    @ApiOperation("通过单号查询具体信息")
    @GetMapping("/api/repair/search/{repairNo}")
    public Repair searchSingleRepair(@RequestParam String repairNo) {
        Repair repair = repairService.selectByRepairNo(repairNo);
        return repair;
    }



}
