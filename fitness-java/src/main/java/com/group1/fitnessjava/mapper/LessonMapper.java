package com.group1.fitnessjava.mapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.group1.fitnessjava.entity.Lesson;
import com.group1.fitnessjava.entity.Lesson;

public interface LessonMapper extends BaseMapper<Lesson> {
    IPage<Lesson> selectLessonPage(Page<Lesson> page, String keyword);
    IPage<Lesson> selectLesson(Page<Lesson> page,String keyword);
    IPage<Lesson>  selectLessonById(Page<Lesson> page, String keyword);
}
