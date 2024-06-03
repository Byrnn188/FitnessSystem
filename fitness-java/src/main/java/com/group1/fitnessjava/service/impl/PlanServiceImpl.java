package com.group1.fitnessjava.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Diet;
import com.group1.fitnessjava.mapper.DietMapper;
import com.group1.fitnessjava.service.PlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlanServiceImpl implements PlanService {
    @Autowired
    private DietMapper dietMapper;
    @Override
    public IPage<Diet> selectDietPage(QueryDTO queryDTO) {
        Page<Diet> page=new Page<>(queryDTO.getPageNo(),queryDTO.getPageSize());
        return dietMapper.selectDietPage(page,queryDTO.getKeyword());
    }

    @Override
    public IPage<Diet> selectDiet(String dietname) {
        Page<Diet> page=new Page<>(1,1);
        return dietMapper.selectDiet(page,dietname);
    }

    @Override
    public IPage<Diet> selectDietById(QueryDTO queryDTO) {
        Page<Diet> page=new Page<>(queryDTO.getPageNo(),queryDTO.getPageSize());
        return dietMapper.selectDietById(page,queryDTO.getKeyword());
    }

    @Override
    public IPage<Diet> selectDietRough(String dietname) {
        Page<Diet> page=new Page<>(1,100);
        return dietMapper.selectDiet(page,dietname);
    }

}
