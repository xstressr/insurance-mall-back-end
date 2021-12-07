package com.sjy.insurance.service.impl;

import com.sjy.insurance.dao.ClaimMapper;
import com.sjy.insurance.entity.Claim;
import com.sjy.insurance.service.ClaimService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.sjy.insurance.util.NumberUtil.genOrderNo;

@Service
public class ClaimServiceImpl implements ClaimService {

    @Autowired
    private ClaimMapper claimMapper;

    @Override
    public int insert(Claim claim) {
        claim.setClaimNo("co"+genOrderNo());
        return claimMapper.insertSelective(claim);
    }

    @Override
    public int updateStatus(int status,String resolver , String goodName) {
        return claimMapper.updateStatusByGoodName(status, resolver ,goodName);
    }

    @Override
    public List<Claim> queryAllByName(String name) {
        return claimMapper.selectAllByName(name);
    }

    @Override
    public List<Claim> queryAllByCompany(String name) {
        return claimMapper.selectAllByCompany(name);
    }
}
