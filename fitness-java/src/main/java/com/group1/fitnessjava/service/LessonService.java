package com.group1.fitnessjava.service;

import com.group1.fitnessjava.entity.Lesson;
import org.springframework.stereotype.Service;

import java.util.List;

public interface LessonService {



    Integer addLesson(Lesson lesson);

    Integer updateLesson(Lesson lesson);

    Integer deleteLesson(Integer id);

    void batchDelete(List<Integer> ids);

}
