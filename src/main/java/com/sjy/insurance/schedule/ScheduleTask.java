package com.sjy.insurance.schedule;

import com.google.gson.Gson;
import com.sjy.insurance.dao.CarouselMapper;
import com.sjy.insurance.dao.GoodsMapper;
import com.sjy.insurance.dao.GuarenteeSlipMapper;
import com.sjy.insurance.entity.GuaranteeTmp;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigurationPackage;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.List;

@Component
@Slf4j
public class ScheduleTask {

    @Autowired
    private CarouselMapper carouselMapper;

    @Autowired
    private GuarenteeSlipMapper guarenteeSlipMapper;

    @Autowired
    private GoodsMapper goodsMapper;



    @Scheduled(fixedRate = 100000)
    public void refreshCarousel() {
        System.out.println("任务执行时间：" + LocalDateTime.now());
        carouselMapper.delAll();
        carouselMapper.insertBySub();
    }

    @Scheduled(fixedRate = 3000)
    public void scheduledTask() {
        List<GuaranteeTmp> guaranteeTmps = guarenteeSlipMapper.queryProductCount();
        Gson gson = new Gson();
        System.out.println(gson.toJson(guaranteeTmps));
        for (GuaranteeTmp guaranteeTmp: guaranteeTmps) {
            goodsMapper.updateTotal(guaranteeTmp);
        }

    }
}
