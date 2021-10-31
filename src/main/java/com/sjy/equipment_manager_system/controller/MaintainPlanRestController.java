package com.sjy.equipment_manager_system.controller;

import com.sjy.equipment_manager_system.entity.MaintainPlan;
import com.sjy.equipment_manager_system.service.MaintainPlanService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@Api(tags = "保养计划")
public class MaintainPlanRestController {

    @Autowired
    private MaintainPlanService maintainPlanService;

    @ApiOperation("保养计划提交")
    @PostMapping("/api/maintainPlan/submit")
    public String submitMaintainPlan(@RequestBody MaintainPlan maintainPlan) {
        int result = maintainPlanService.insert(maintainPlan);
        return result > 0 ? "成功" : "失败";
    }


    @ApiOperation("保养计划全量查询")
    @GetMapping("/api/maintainPlan/searchList")
    public List<MaintainPlan> selectAllMaintainPlan() {

        List<MaintainPlan> maintainPlanList = maintainPlanService.selectAllMaintainPlan();
        return maintainPlanList;
    }

    @ApiOperation("单个保养计划查询")
    @GetMapping("/api/maintainPlan/search/{maintainPlanId}")
    public MaintainPlan selectSingleMaintainPlan(@RequestParam String maintainPlanId) {
        MaintainPlan maintainPlan = maintainPlanService.selectByMaintainPlanId(maintainPlanId);
        return maintainPlan;
    }

}
