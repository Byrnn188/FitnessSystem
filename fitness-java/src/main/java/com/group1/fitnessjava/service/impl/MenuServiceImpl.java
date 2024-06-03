package com.group1.fitnessjava.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Product;
import com.group1.fitnessjava.mapper.ProductMapper;
import com.group1.fitnessjava.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private ProductMapper productMapper;

    @Override
    public IPage<Product> selectProductPage(QueryDTO queryDTO) {
        Page<Product> page=new Page<>(queryDTO.getPageNo(),queryDTO.getPageSize());
        return productMapper.selectProductPage(page,queryDTO.getKeyword());
    }
    @Override
    public IPage<Product> selectProduct(String productname) {
        Page<Product> page=new Page<>(1,1);
        return productMapper.selectProduct(page,productname);
    }

    @Override
    public IPage<Product> selectProductRough(String productname) {
        Page<Product> page=new Page<>(1,100);
        return productMapper.selectProduct(page,productname);

    }

    public IPage<Product> selectProductById(QueryDTO queryDTO) {
        Page<Product> page=new Page<>(queryDTO.getPageNo(),queryDTO.getPageSize());
        return productMapper.selectProductById(page,queryDTO.getKeyword());
    }

}
