package com.group1.fitnessjava.mapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.group1.fitnessjava.entity.Order;

public interface OrderMapper extends BaseMapper<Order> {
    IPage<Order> selectOrderPage(Page<Order> page,String keyword);
    IPage<Order> selectOrderPageOneCustomer(Page<Order> page,String keyword);
    IPage<Order> selectOrder(Page<Order> page,String keyword);
    IPage<Order> selectOrderById(Page<Order> page,String keyword);
}
