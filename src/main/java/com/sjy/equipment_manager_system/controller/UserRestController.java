package com.sjy.equipment_manager_system.controller;

import com.sjy.equipment_manager_system.common.util.JwtUtil;
import com.sjy.equipment_manager_system.entity.userDAO;
import com.sjy.equipment_manager_system.service.User;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Slf4j
@Api(tags = "用户管理")
@RestController
public class UserRestController {

    @Autowired
    private User userService;

    @ApiOperation("删除用户")
    @RequestMapping(value = "/api/user/{id}", method = RequestMethod.DELETE)
    public void deleteUser(@PathVariable("id") Integer id) { userService.deleteByPrimaryKey(id); }

    @ApiOperation("查询用户")
    @GetMapping(value = "/api/user")
    public String selectByUsername(@RequestParam String username) {
        userDAO dbUser = userService.selectByUserName(username);

            log.info("登录成功！生成token！");
            String token = JwtUtil.createToken(dbUser);
            return token;

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
