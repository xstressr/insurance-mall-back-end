package com.sjy.insurance.service;

public interface CalculateService {
    float calcuPremium(int basePremium, int occupationType, int insuranceType, int age);
}
