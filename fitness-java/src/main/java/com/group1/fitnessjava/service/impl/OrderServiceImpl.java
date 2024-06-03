package com.group1.fitnessjava.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Order;
import com.group1.fitnessjava.mapper.OrderMapper;
import com.group1.fitnessjava.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;


    @Override
    public Integer addOrder(Order order) {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        wrapper.eq("order_id", order.getOrderId());
        Order order1=orderMapper.selectOne(wrapper);
        if (order1==null){return orderMapper.insert(order);}
        else{
            return -1;
        }
    }

    @Override
    public Integer updateOrder(Order order) {
        return orderMapper.updateById(order);
    }



    @Override
    public Integer deleteOrder(Integer id) {
        return orderMapper.deleteById(id);
    }

    @Override
    public void batchDelete(List<Integer> ids) {
        orderMapper.deleteBatchIds(ids);
    }

    @Override
    public IPage<Order> selectOrderPage(QueryDTO queryDTO) {
        Page<Order> page=new Page<>(queryDTO.getPageNo(),queryDTO.getPageSize());
        return orderMapper.selectOrderPage(page,queryDTO.getKeyword());
    }

    @Override
    public IPage<Order> selectOrderPageOneCustomer(QueryDTO queryDTO) {
        Page<Order> page=new Page<>(queryDTO.getPageNo(),queryDTO.getPageSize());
        return orderMapper.selectOrderPageOneCustomer(page,queryDTO.getKeyword());
    }

    @Override
    public IPage<Order> selectOrder(QueryDTO queryDTO) {
        Page<Order> page=new Page<>(queryDTO.getPageNo(),queryDTO.getPageSize());
        return orderMapper.selectOrderPage(page,queryDTO.getKeyword());
    }
}
