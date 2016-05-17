package com.logistics.mapper;

import com.logistics.model.CarMessage;

public interface CarMessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CarMessage record);

    int insertSelective(CarMessage record);

    CarMessage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CarMessage record);

    int updateByPrimaryKey(CarMessage record);
}