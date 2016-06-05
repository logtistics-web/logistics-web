package com.logistics.mapper;

import com.logistics.model.Manage;

public interface ManageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Manage record);

    int insertSelective(Manage record);

    Manage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Manage record);

    int updateByPrimaryKey(Manage record);

	Manage findByUserName(String username);
}