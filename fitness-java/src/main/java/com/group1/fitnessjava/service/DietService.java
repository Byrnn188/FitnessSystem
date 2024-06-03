package com.group1.fitnessjava.service;

import com.group1.fitnessjava.entity.Diet;

import java.util.List;

public interface DietService {



    Integer addDiet(Diet diet);

    Integer updateDiet(Diet diet);

    Integer deleteDiet(Integer id);

    void batchDelete(List<Integer> ids);

}

