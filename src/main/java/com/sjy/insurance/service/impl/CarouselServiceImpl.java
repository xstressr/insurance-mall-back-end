package com.sjy.insurance.service.impl;

import com.sjy.insurance.dao.CarouselMapper;
import com.sjy.insurance.entity.Carousel;
import com.sjy.insurance.service.CarouselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarouselServiceImpl implements CarouselService {

    @Autowired
    private CarouselMapper carouselMapper;

    @Override
    public List<Carousel> queryAll() {
        return carouselMapper.queryAll();
    }
}
