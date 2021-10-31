package com.sjy.equipment_manager_system.dao;

import com.sjy.equipment_manager_system.entity.MaintainPlan;

import java.util.List;

public interface MaintainPlanMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_maintain_plan
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String maintainPlanId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_maintain_plan
     *
     * @mbg.generated
     */
    int insert(MaintainPlan record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_maintain_plan
     *
     * @mbg.generated
     */
    int insertSelective(MaintainPlan record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_maintain_plan
     *
     * @mbg.generated
     */
    MaintainPlan selectByPrimaryKey(String maintainPlanId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_maintain_plan
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(MaintainPlan record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_maintain_plan
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(MaintainPlan record);

    List<MaintainPlan> selectAll();
}