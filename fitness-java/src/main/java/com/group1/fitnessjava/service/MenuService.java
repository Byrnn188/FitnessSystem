package com.group1.fitnessjava.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Product;

public interface MenuService {
    IPage<Product> selectProductPage(QueryDTO queryDTO);
    IPage<Product> selectProduct(String productname);

    IPage<Product> selectProductById(QueryDTO queryDTO);
    IPage<Product> selectProductRough(String productname);
}
