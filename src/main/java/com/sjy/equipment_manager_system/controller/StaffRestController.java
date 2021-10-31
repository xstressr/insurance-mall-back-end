package com.sjy.equipment_manager_system.controller;

import com.google.gson.Gson;
import com.sjy.equipment_manager_system.common.util.JwtUtil;
import com.sjy.equipment_manager_system.entity.Staff;
import com.sjy.equipment_manager_system.service.StaffService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@Api(tags = "用户管理")
@RestController
public class StaffRestController {

    @Autowired
    private StaffService staffService;

//    @ApiOperation("删除用户")
//    @RequestMapping(value = "/api/staff/{id}", method = RequestMethod.DELETE)
//    public void deleteUser(@PathVariable("id") Integer id) { staffService.deleteByPrimaryKey(id); }

    @ApiOperation("用户登陆")
    @PostMapping("/api/staff/login")
    public String login(@RequestBody Staff staff){
        Staff staff1 = staffService.selectByStaffName(staff.getStaffName(),staff.getStaffPwd());
        log.info("登录成功！生成token！");
        String token = JwtUtil.createToken(staff1);
        return token;
    }

    @ApiOperation("用户注册")
    @PostMapping("/api/staff/register")
    public String register(@RequestBody Staff staff) {
        int result = staffService.insert(staff);

        return result > 0 ? "成功" : "失败";
    }

    @ApiOperation("删除用户")
    @PostMapping("/api/staff/delete/{staffName}")
    public String deleteByStaffName(@RequestParam String staffName){
        int result = staffService.deleteByStaffName(staffName);

        return result > 0 ? "成功" : "失败";
    }

    @ApiOperation("查询所有用户")
    @GetMapping("/api/staff/search")
    public List<Staff> selectAll() {
        List<Staff> staffList = staffService.selectAll();
        return staffList;
    }



    /*    @ApiOperation("用户登陆")
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(User user) {
        for (User dbUser : userMap.values()) {
            if (dbUser.getUserName().equals(user.getUserName()) && dbUser.getPassword().equals(user.getPassword())) {
                log.info("登录成功！生成token！");
                String token = JwtUtil.createToken(dbUser);
                return token;
            }
        }
        return "";
    }*/
}
