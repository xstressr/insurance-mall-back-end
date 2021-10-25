package com.sjy.equipment_manager_system.service;

import com.sjy.equipment_manager_system.mbg.model.TUser;

import java.util.List;

public interface user {

    /**
     * 通过id查找
     * @param id
     * @return
     */
    TUser selectByPrimaryKey(int id);

    /**
     * 通过主键更新
     * @return
     */
//    int updateByPrimaryKey(int id);

    /**
     * 通过user插入
     * @param user
     * @return
     */
    int insert(TUser user);

    /**
     * 通过主键删除
     * @param id
     * @return
     */
    int deleteByPrimaryKey(int id);

}
