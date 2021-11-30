package com.sjy.insurance.service.impl;

import com.sjy.insurance.service.CalculateService;
import lombok.extern.slf4j.Slf4j;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class CalculateServiceImpl implements CalculateService {
    @Override
    public float calcuPremium(int basePremium, int occupationType, int insuranceType, int age) {
        float amount = 0.0F;
        switch (insuranceType) {
            case 1:
                if(age > 50) {
                    amount = (float) (basePremium*(1.3+0.03*occupationType));
                    return amount;
                } else if (age < 16) {
                    amount = (float) (basePremium*(1.2+0.03*occupationType));
                    return amount;
                } else {
                    amount = (float) (basePremium*(1+0.03*occupationType));
                    return amount;
                }
            case 2:
                if(age > 50) {
                    amount = (float) (basePremium*(1.2+0.03*occupationType));
                    return amount;
                } else if (age < 16) {
                    amount = (float) (basePremium*(1.1+0.03*occupationType));
                    return amount;
                } else {
                    amount = (float) (basePremium*(1.05+0.03*occupationType));
                    return amount;
                }
            case 3:
                log.info("case3");
                amount = (float) basePremium;
                return amount;
            case 4:
                log.info("case4");
                return (float) basePremium;
            case 5:
                log.info("case5");
                amount = (float) basePremium;
                return amount;
            case 6:
                log.info("case6");
                return (float) basePremium;
            case 7:
                log.info("case7");
                return (float) basePremium;
            case 8:
                log.info("case8");
                return (float) basePremium;
        }
        return 0;
    }
}
