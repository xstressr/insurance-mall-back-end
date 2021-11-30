package com.sjy.insurance.entity;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * This class was generated by MyBatis Generator.
 * This class corresponds to the database table t_insurance_guarantee_slip
 *
 * @mbg.generated do_not_delete_during_merge
 */
public class GuarenteeSlip implements Serializable {
    /**
     * Database Column Remarks:
     *   保单号
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_insurance_guarantee_slip.id
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     * Database Column Remarks:
     *   拥有者
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_insurance_guarantee_slip.owner
     *
     * @mbg.generated
     */
    private String owner;

    /**
     * Database Column Remarks:
     *   保险商品
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_insurance_guarantee_slip.product
     *
     * @mbg.generated
     */
    private String product;

    /**
     * Database Column Remarks:
     *   保额最少赔付
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_insurance_guarantee_slip.product_claim_min
     *
     * @mbg.generated
     */
    private Integer productClaimMin;

    /**
     * Database Column Remarks:
     *   保额最大赔付
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_insurance_guarantee_slip.product_claim_max
     *
     * @mbg.generated
     */
    private Integer productClaimMax;

    /**
     * Database Column Remarks:
     *   创建时间
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_insurance_guarantee_slip.create_time
     *
     * @mbg.generated
     */
    private Date createTime;

    private String guaranteeNo;

    private float price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_insurance_guarantee_slip
     *
     * @mbg.generated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_insurance_guarantee_slip.id
     *
     * @return the value of t_insurance_guarantee_slip.id
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_insurance_guarantee_slip.id
     *
     * @param id the value for t_insurance_guarantee_slip.id
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_insurance_guarantee_slip.owner
     *
     * @return the value of t_insurance_guarantee_slip.owner
     *
     * @mbg.generated
     */
    public String getOwner() {
        return owner;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_insurance_guarantee_slip.owner
     *
     * @param owner the value for t_insurance_guarantee_slip.owner
     *
     * @mbg.generated
     */
    public void setOwner(String owner) {
        this.owner = owner;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_insurance_guarantee_slip.product
     *
     * @return the value of t_insurance_guarantee_slip.product
     *
     * @mbg.generated
     */
    public String getProduct() {
        return product;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_insurance_guarantee_slip.product
     *
     * @param product the value for t_insurance_guarantee_slip.product
     *
     * @mbg.generated
     */
    public void setProduct(String product) {
        this.product = product;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_insurance_guarantee_slip.product_claim_min
     *
     * @return the value of t_insurance_guarantee_slip.product_claim_min
     *
     * @mbg.generated
     */
    public Integer getProductClaimMin() {
        return productClaimMin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_insurance_guarantee_slip.product_claim_min
     *
     * @param productClaimMin the value for t_insurance_guarantee_slip.product_claim_min
     *
     * @mbg.generated
     */
    public void setProductClaimMin(Integer productClaimMin) {
        this.productClaimMin = productClaimMin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_insurance_guarantee_slip.product_claim_max
     *
     * @return the value of t_insurance_guarantee_slip.product_claim_max
     *
     * @mbg.generated
     */
    public Integer getProductClaimMax() {
        return productClaimMax;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_insurance_guarantee_slip.product_claim_max
     *
     * @param productClaimMax the value for t_insurance_guarantee_slip.product_claim_max
     *
     * @mbg.generated
     */
    public void setProductClaimMax(Integer productClaimMax) {
        this.productClaimMax = productClaimMax;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_insurance_guarantee_slip.create_time
     *
     * @return the value of t_insurance_guarantee_slip.create_time
     *
     * @mbg.generated
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_insurance_guarantee_slip.create_time
     *
     * @param createTime the value for t_insurance_guarantee_slip.create_time
     *
     * @mbg.generated
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getGuaranteeNo() {
        return guaranteeNo;
    }

    public void setGuaranteeNo(String guaranteeNo) {
        this.guaranteeNo = guaranteeNo;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}