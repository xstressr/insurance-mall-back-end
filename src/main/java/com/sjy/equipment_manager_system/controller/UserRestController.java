package com.sjy.equipment_manager_system.controller;

import com.sjy.equipment_manager_system.service.User;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Api(tags = "用户管理")
@RestController
public class UserRestController {

    @Autowired
    private User user;

    @ApiOperation("删除用户")
    @RequestMapping(value = "/api/user/{id}", method = RequestMethod.DELETE)
    public void deleteUser(@PathVariable("id") Integer id) { user.deleteByPrimaryKey(id); }

}
