package com.group1.fitnessjava.mapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.group1.fitnessjava.entity.Mycourse;

public interface MycourseMapper extends BaseMapper<Mycourse> {
    IPage<Mycourse> selectMycoursePage(Page<Mycourse> page,String keyword);
    IPage<Mycourse> selectMycourse(Page<Mycourse> page,String keyword);

    IPage<Mycourse> selectMycourseWithSameLessonId(Page<Mycourse> page,String keyword);
}
