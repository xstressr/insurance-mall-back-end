package com.sjy.equipment_manager_system.controller;

import com.sjy.equipment_manager_system.mbg.model.TUser;
import com.sjy.equipment_manager_system.service.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private user userService;

    @RequestMapping(value = "/api/user/{id}", method = RequestMethod.GET)
    public TUser selectByPrimaryKey(@PathVariable("id") int id) { return userService.selectByPrimaryKey(id); }

}
