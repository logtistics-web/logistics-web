package com.logistics.mapper;

import com.logistics.model.Area;


public interface AreaMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);

	int updateRightData(Integer rgt);
}