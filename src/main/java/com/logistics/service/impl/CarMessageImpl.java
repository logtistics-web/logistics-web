package com.logistics.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.mapper.CarMessageMapper;
import com.logistics.model.CarMessage;
import com.logistics.service.CarMessageService;
import com.logistics.utils.PaginationUtil;

@Service("CarMessageService")
public class CarMessageImpl implements CarMessageService{

	@Autowired
	private CarMessageMapper carMessageMapper;
	
	public ListResult getCarsMsg(Pagination pagination) {
		
		PaginationUtil.initDateQueryCondition(pagination);
		//设置分页区间，并设置第三个参数为true，计算总记录数
	    PageHelper.startPage(pagination.getCurrentPage(), pagination.getPageCount(), true);
		
		List<CarMessage> carMsgList = carMessageMapper.getAllCarMsg();

		PageInfo page = new PageInfo(carMsgList);
		ListResult listResult = new ListResult(carMsgList,page.getTotal());
		
		return listResult;
	}

}
