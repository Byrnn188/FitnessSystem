package com.group1.fitnessjava.service;

import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Cart;
import com.baomidou.mybatisplus.core.metadata.IPage;

import java.util.List;

public interface CartService {
    IPage<Cart> selectCartPage(QueryDTO queryDTO);
    IPage<Cart> selectCart(QueryDTO queryDTO);

    IPage<Cart> selectCartWithSameProductId(QueryDTO queryDTO);
    void batchDelete(List<Integer> ids);
    Integer addCart(Cart cart);

    Integer updateCart(Cart cart);

    Integer deleteCart(Integer id);


}
