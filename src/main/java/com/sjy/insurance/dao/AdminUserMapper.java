package com.sjy.insurance.dao;

import com.sjy.insurance.entity.AdminUser;

public interface AdminUserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_admin_user
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Long adminUserId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_admin_user
     *
     * @mbg.generated
     */
    int insert(AdminUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_admin_user
     *
     * @mbg.generated
     */
    int insertSelective(AdminUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_admin_user
     *
     * @mbg.generated
     */
    AdminUser selectByPrimaryKey(Long adminUserId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_admin_user
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(AdminUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_admin_user
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(AdminUser record);
}