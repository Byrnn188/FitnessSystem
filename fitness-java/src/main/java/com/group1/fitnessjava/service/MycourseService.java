package com.group1.fitnessjava.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Lesson;
import com.group1.fitnessjava.entity.Mycourse;
import com.group1.fitnessjava.entity.Product;

import java.util.List;

public interface MycourseService {
    IPage<Mycourse> selectMycoursePage(QueryDTO queryDTO);
    IPage<Mycourse> selectMycourse(QueryDTO queryDTO);

    IPage<Mycourse> selectMycourseWithSameLessonId(QueryDTO queryDTO);
    void batchDelete(List<Integer> ids);
    Integer addMycourse(Mycourse mycourse);

    Integer updateMycourse(Mycourse mycourse);

    Integer deleteMycourse(Integer id);

//    IPage<Lesson> selectLessonById(QueryDTO queryLessonDTO);
}
