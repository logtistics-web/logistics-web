package com.logistics.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.mapper.EnterpriseMessageMapper;
import com.logistics.model.CarMessage;
import com.logistics.model.EnterpriseMessage;
import com.logistics.service.EnterpriseService;

@Controller
@RequestMapping("/")
public class EnterpriseMsgCtrl {
	
	@Autowired
	private EnterpriseService enterpriseService;
	@Autowired
	private EnterpriseMessageMapper enterpriseMapper;
	
	@RequestMapping(value = "/enterpriseMsgList")
	public String loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {

		ListResult listResult = enterpriseService.getEnterpriseMsg(pagination);
		@SuppressWarnings("unchecked")
		List<EnterpriseMessage> enterpriseMsgList = listResult.getResult();
		
		model.addAttribute("enterpriseMsgList", enterpriseMsgList);

		return "enterpriseMsg/enterpriseMsgList";
	}
	
	@RequestMapping(value="enterpriseDetail/{id}")
	public String loadModify(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		EnterpriseMessage enterpriseMsg = enterpriseMapper.selectByPrimaryKey(id);
		model.addAttribute("enterpriseMsg", enterpriseMsg);
		
		return "enterpriseMsg/enterpriseMsgDetail";
	}
}
