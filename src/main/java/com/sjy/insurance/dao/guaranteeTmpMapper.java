package com.sjy.insurance.dao;

import com.sjy.insurance.entity.GuaranteeTmp;

public interface guaranteeTmpMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_guarantee_tmp
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String goodsName);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_guarantee_tmp
     *
     * @mbg.generated
     */
    int insert(GuaranteeTmp record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_guarantee_tmp
     *
     * @mbg.generated
     */
    int insertSelective(GuaranteeTmp record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_guarantee_tmp
     *
     * @mbg.generated
     */
    GuaranteeTmp selectByPrimaryKey(String goodsName);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_guarantee_tmp
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(GuaranteeTmp record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_guarantee_tmp
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(GuaranteeTmp record);
}