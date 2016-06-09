package com.logistics.mapper;

import java.util.List;

import com.logistics.model.CarMessage;

public interface CarMessageMapper {
	
	List<CarMessage> getAllCarMsg();
	
	List<CarMessage> getAllBackCarMsg();
	
    int deleteByPrimaryKey(Integer id);

    int insert(CarMessage record);

    int insertSelective(CarMessage record);

    CarMessage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CarMessage record);

    int updateByPrimaryKey(CarMessage record);
    
    List<CarMessage> getCarMsgByUser(String username);
}