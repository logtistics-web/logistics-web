package com.logistics.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.mapper.EnterpriseMessageMapper;
import com.logistics.model.EnterpriseMessage;
import com.logistics.service.EnterpriseService;
import com.logistics.utils.PaginationUtil;

@Service("EnterpriseService")
public class EnterpriseServiceImpl implements EnterpriseService{

	@Autowired
	private EnterpriseMessageMapper enterpriseMapper;
	
	public ListResult getEnterpriseMsg(Pagination pagination) {
		PaginationUtil.initDateQueryCondition(pagination);
		//设置分页区间，并设置第三个参数为true，计算总记录数
	    PageHelper.startPage(pagination.getCurrentPage(), pagination.getPageCount(), true);
		
		List<EnterpriseMessage> enterpriseMsgList = enterpriseMapper.getAllEnterprises();

		PageInfo page = new PageInfo(enterpriseMsgList);
		ListResult listResult = new ListResult(enterpriseMsgList,page.getTotal());
		
		return listResult;
	}

}
