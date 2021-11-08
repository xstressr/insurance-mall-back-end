package com.sjy.insurance.dao;

import com.sjy.insurance.entity.ThirdParty;

public interface ThirdPartyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_thirdparty
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Long sellerUserId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_thirdparty
     *
     * @mbg.generated
     */
    int insert(ThirdParty record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_thirdparty
     *
     * @mbg.generated
     */
    int insertSelective(ThirdParty record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_thirdparty
     *
     * @mbg.generated
     */
    ThirdParty selectByPrimaryKey(Long sellerUserId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_thirdparty
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(ThirdParty record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_mall_thirdparty
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(ThirdParty record);
}