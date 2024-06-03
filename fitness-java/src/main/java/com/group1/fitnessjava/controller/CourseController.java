package com.group1.fitnessjava.controller;

import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Lesson;
import com.group1.fitnessjava.result.Result;
import com.group1.fitnessjava.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;


import java.util.List;
import java.util.Objects;
@RestController
public class CourseController {
    @Autowired
    private CourseService courseService;

    @PostMapping("/api/course/{category}")
    public Result ShowCourse(@PathVariable String category){
        QueryDTO queryDTO=new QueryDTO();
        queryDTO.setPageNo(1);
        queryDTO.setPageSize(100);
        queryDTO.setKeyword(category);
        if (Objects.equals(category, "all")){queryDTO.setKeyword("");}
        return new Result(200,"",courseService.selectLessonPage(queryDTO));
    }
    @PostMapping("/api/course/lesson/{lessonName}")
    public Result ShowLesson(@PathVariable String lessonName){

        Lesson lessonSelect=courseService.selectLesson(lessonName).getRecords().get(0);

        return new Result(200,"",lessonSelect);
    }
}