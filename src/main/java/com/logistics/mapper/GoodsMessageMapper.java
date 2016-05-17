package com.logistics.mapper;

import com.logistics.model.GoodsMessage;

public interface GoodsMessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GoodsMessage record);

    int insertSelective(GoodsMessage record);

    GoodsMessage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GoodsMessage record);

    int updateByPrimaryKey(GoodsMessage record);
}