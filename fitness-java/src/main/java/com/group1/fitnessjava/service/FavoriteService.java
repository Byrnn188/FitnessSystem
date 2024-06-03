package com.group1.fitnessjava.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Favorite;

import java.util.List;

public interface FavoriteService {
    IPage<Favorite> selectFavoritePage(QueryDTO queryDTO);
    IPage<Favorite> selectFavorite(QueryDTO queryDTO);

    IPage<Favorite> selectFavoriteWithSameDietId(QueryDTO queryDTO);
    void batchDelete(List<Integer> ids);
    Integer addFavorite(Favorite favorite);

    Integer updateFavorite(Favorite favorite);

    Integer deleteFavorite(Integer id);
}
