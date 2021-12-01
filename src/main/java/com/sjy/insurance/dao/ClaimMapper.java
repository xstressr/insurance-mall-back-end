package com.sjy.insurance.dao;

import com.sjy.insurance.entity.Claim;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface ClaimMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_claim
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_claim
     *
     * @mbg.generated
     */
    int insert(Claim record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_claim
     *
     * @mbg.generated
     */
    int insertSelective(Claim record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_claim
     *
     * @mbg.generated
     */
    Claim selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_claim
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(Claim record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_insurance_claim
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Claim record);

    @Update("update t_insurance_claim set status = #{status}, resolver=#{resolver}  where guarantee_no = #{guaranteeNo} ")
    int updateStatusByGoodName(int status,String resolver ,String guaranteeNo);

    List<Claim> selectAllByName(String loginName);
}