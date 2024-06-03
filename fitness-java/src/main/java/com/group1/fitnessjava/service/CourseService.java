package com.group1.fitnessjava.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Lesson;



public interface CourseService {
    IPage<Lesson> selectLessonPage(QueryDTO queryDTO);
    IPage<Lesson> selectLesson(String lessonname);

    IPage<Lesson> selectLessonById(QueryDTO queryDTO);
    IPage<Lesson> selectLessonRough(String lessonname);


}
