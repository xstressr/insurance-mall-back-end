package com.sjy.equipment_manager_system.dao;

import com.sjy.equipment_manager_system.entity.Staff;

import java.util.List;

public interface StaffMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_staff
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer staffId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_staff
     *
     * @mbg.generated
     */
    int insert(Staff record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_staff
     *
     * @mbg.generated
     */
    int insertSelective(Staff record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_staff
     *
     * @mbg.generated
     */
    Staff selectByPrimaryKey(Integer staffId);



    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_staff
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(Staff record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_staff
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Staff record);

    /**
     * 自己写的mapper映射
     */

    /**
     * 通过staffName查询
     * @param staffName 查询参数
     * @param staffPwd
     * @return
     */
    Staff selectByStaffName(String staffName, String staffPwd);

    /**
     * 通过staffName删除
     * @param staffName
     * @return
     */
    int deleteByStaffName(String staffName);

    List<Staff> selectAll();


}