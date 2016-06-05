package com.logistics.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.mapper.KnowledgeMapper;
import com.logistics.model.Knowledge;
import com.logistics.service.KnowledgeService;
import com.logistics.utils.PaginationUtil;

@Service("KnowledgeService")
public class KnowledgeServiceImpl implements KnowledgeService{

	@Autowired
	private KnowledgeMapper knowledgeMapper;
	
	public ListResult getKnowledgeMsg(Pagination pagination) {
		PaginationUtil.initDateQueryCondition(pagination);
		//设置分页区间，并设置第三个参数为true，计算总记录数
	    PageHelper.startPage(pagination.getCurrentPage(), pagination.getPageCount(), true);
		
		List<Knowledge> kMsgList = knowledgeMapper.getAllKnowLedgeMsg();

		PageInfo page = new PageInfo(kMsgList);
		ListResult listResult = new ListResult(kMsgList,page.getTotal());
		
		return listResult;
	}

}
