package com.group1.fitnessjava.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.group1.fitnessjava.dto.QueryDTO;
import com.group1.fitnessjava.entity.Favorite;
import com.group1.fitnessjava.entity.Diet;
import com.group1.fitnessjava.mapper.FavoriteMapper;
import com.group1.fitnessjava.mapper.DietMapper;
import com.group1.fitnessjava.service.FavoriteService;
import com.group1.fitnessjava.service.DietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DietServiceImpl implements DietService {
    @Autowired
    private DietMapper dietMapper;

    @Autowired
    private FavoriteMapper favoriteMapper;

    @Autowired
    private FavoriteService favoriteService;

    @Override
    public Integer addDiet(Diet diet) {
        QueryWrapper<Diet> wrapper = new QueryWrapper<>();
        wrapper.eq("diet_name", diet.getDietName());
        Diet diet1=dietMapper.selectOne(wrapper);
        if (diet1==null){return dietMapper.insert(diet);}
        else{
            return -1;
        }
    }

    @Override
    public Integer updateDiet(Diet diet) {
        return dietMapper.updateById(diet);
    }


    @Override
    public Integer deleteDiet(Integer id) {

        QueryDTO queryDietDTO = new QueryDTO();
        queryDietDTO.setPageNo(1);
        queryDietDTO.setPageSize(9999);
        String dietId = String.valueOf(id);
        queryDietDTO.setKeyword(dietId);

        IPage<Favorite> favoriteWithSameDietId = favoriteService.selectFavoriteWithSameDietId(queryDietDTO);
        List<Favorite> favoriteSelect = favoriteWithSameDietId.getRecords();

        for (Favorite favorite : favoriteSelect) {
            favoriteService.deleteFavorite(favorite.getFavoriteId());
        }

        return dietMapper.deleteById(id);
    }

    @Override
    public void batchDelete(List<Integer> ids) {

        for (Integer id : ids){
            QueryDTO queryDietDTO = new QueryDTO();
            queryDietDTO.setPageNo(1);
            queryDietDTO.setPageSize(9999);
            String dietId = String.valueOf(id);
            queryDietDTO.setKeyword(dietId);

            IPage<Favorite> favoriteWithSameDietId = favoriteService.selectFavoriteWithSameDietId(queryDietDTO);
            List<Favorite> favoriteSelect = favoriteWithSameDietId.getRecords();

            for (Favorite favorite : favoriteSelect) {
                favoriteService.deleteFavorite(favorite.getFavoriteId());
            }
        }


        dietMapper.deleteBatchIds(ids);

    }



}
