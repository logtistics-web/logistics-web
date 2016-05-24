package com.logistics.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.mapper.GoodsMessageMapper;
import com.logistics.model.GoodsMessage;
import com.logistics.service.GoodsMessageService;
import com.logistics.utils.PaginationUtil;

@Service("GoodsMessageService")
public class GoodsMessageServiceImpl implements GoodsMessageService{
	
	@Autowired
	private GoodsMessageMapper goodsMessageMapper;

	public ListResult getGoodsMsg(Pagination pagination) {

		PaginationUtil.initDateQueryCondition(pagination);
		//设置分页区间，并设置第三个参数为true，计算总记录数
	    PageHelper.startPage(pagination.getCurrentPage(), pagination.getPageCount(), true);
		
		List<GoodsMessage> goodsMsgList = goodsMessageMapper.getAllGoods();

		PageInfo page = new PageInfo(goodsMsgList);
		ListResult listResult = new ListResult(goodsMsgList,page.getTotal());
		
		return listResult;
	}

}
