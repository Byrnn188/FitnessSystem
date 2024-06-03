package com.group1.fitnessjava.mapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.group1.fitnessjava.entity.Favorite;

public interface FavoriteMapper extends BaseMapper<Favorite>{
    IPage<Favorite> selectFavoritePage(Page<Favorite> page, String keyword);
    IPage<Favorite> selectFavorite(Page<Favorite> page,String keyword);
    IPage<Favorite> selectFavoriteWithSameDietId(Page<Favorite> page,String keyword);

}