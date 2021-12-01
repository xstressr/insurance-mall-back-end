package com.sjy.insurance.schedule;

import com.sjy.insurance.dao.CarouselMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
@Slf4j
public class ScheduleTask {

    @Autowired
    private CarouselMapper carouselMapper;

    @Scheduled(fixedRate = 100000)
    public void scheduledTask() {
        System.out.println("任务执行时间：" + LocalDateTime.now());
        carouselMapper.delAll();
        carouselMapper.insertBySub();
    }
}
