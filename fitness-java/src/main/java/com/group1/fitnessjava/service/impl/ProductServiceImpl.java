package com.group1.fitnessjava.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Cart;
import com.group1.fitnessjava.entity.Product;
import com.group1.fitnessjava.mapper.CartMapper;
import com.group1.fitnessjava.mapper.ProductMapper;
import com.group1.fitnessjava.service.CartService;
import com.group1.fitnessjava.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private CartMapper cartMapper;

    @Autowired
    private CartService cartService;

    @Override
    public Integer addProduct(Product product) {
        QueryWrapper<Product> wrapper = new QueryWrapper<>();
        wrapper.eq("product_name", product.getProductName());
        Product product1=productMapper.selectOne(wrapper);
        if (product1==null){return productMapper.insert(product);}
        else{
            return -1;
        }
    }

    @Override
    public Integer updateProduct(Product product) {
        return productMapper.updateById(product);
    }


    @Override
    public Integer deleteProduct(Integer id) {

        QueryDTO queryProductDTO = new QueryDTO();
        queryProductDTO.setPageNo(1);
        queryProductDTO.setPageSize(9999);
        String productId = String.valueOf(id);
        queryProductDTO.setKeyword(productId);

        IPage<Cart> cartWithSameProductId = cartService.selectCartWithSameProductId(queryProductDTO);
        List<Cart> cartSelect = cartWithSameProductId.getRecords();

        for (Cart cart : cartSelect) {
            cartService.deleteCart(cart.getCartId());
        }

            return productMapper.deleteById(id);
    }

    @Override
    public void batchDelete(List<Integer> ids) {

        for (Integer id : ids){
        QueryDTO queryProductDTO = new QueryDTO();
        queryProductDTO.setPageNo(1);
        queryProductDTO.setPageSize(9999);
        String productId = String.valueOf(id);
        queryProductDTO.setKeyword(productId);

        IPage<Cart> cartWithSameProductId = cartService.selectCartWithSameProductId(queryProductDTO);
        List<Cart> cartSelect = cartWithSameProductId.getRecords();

        for (Cart cart : cartSelect) {
            cartService.deleteCart(cart.getCartId());
        }
        }


        productMapper.deleteBatchIds(ids);

    }



}