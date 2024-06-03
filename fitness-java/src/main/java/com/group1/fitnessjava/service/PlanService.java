package com.group1.fitnessjava.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Diet;

public interface PlanService {
    IPage<Diet> selectDietPage(QueryDTO queryDTO);
    IPage<Diet> selectDiet(String dietname);

    IPage<Diet> selectDietById(QueryDTO queryDTO);
    IPage<Diet> selectDietRough(String dietname);
}
