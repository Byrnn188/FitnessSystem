package com.group1.fitnessjava.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName(value = "favorite")
public class Favorite {


    @TableId(type = IdType.AUTO)
    private Integer favoriteId;
    private Integer dietId;
    private Integer userId;
    private String dietName;



    public Integer getFavoriteId() {
        return favoriteId;
    }

    public void setFavoriteId(Integer favoriteId) {
        this.favoriteId = favoriteId;
    }
    public Integer getDietId() {
        return dietId;
    }

    public void setDietId(Integer dietId) {
        this.dietId = dietId;
    }
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getDietName() {
        return dietName;
    }

    public void setDietName(String dietName) {
        this.dietName = dietName;
    }






    public Favorite() {
    }

    public Favorite(Integer favoriteId, Integer dietId, Integer dietNum, Integer userId, String dietName,String dietSize) {
        this.favoriteId = favoriteId;
        this.dietId = dietId;
        this.userId = userId;
        this.dietName = dietName;

    }

    @Override
    public String toString() {
        return "Favorite{" +
                "favoriteId=" + favoriteId +
                ", dietId=" + dietId +
                ", userId=" + userId +
                ", dietName='" + dietName + '\'' +
                '}';
    }
}
