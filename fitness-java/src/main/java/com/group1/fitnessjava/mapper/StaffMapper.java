package com.group1.fitnessjava.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.group1.fitnessjava.entity.Staff;


public interface StaffMapper extends BaseMapper<Staff> {
    IPage<Staff> selectUserPage(Page<Staff> page, String keyword);
}
