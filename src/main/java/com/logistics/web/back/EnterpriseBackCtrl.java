package com.logistics.web.back;

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
import com.logistics.model.Manage;
import com.logistics.service.EnterpriseService;

@Controller
@RequestMapping("/")
public class EnterpriseBackCtrl {

	@Autowired
	private EnterpriseMessageMapper enterpriseMapper;
	@Autowired
	private EnterpriseService enterpriseService;
	
	@RequestMapping(value = "/enterpriseBackList")
	public String loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {

		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return "back_login/login";
		}
		
		ListResult listResult = enterpriseService.getEnterpriseMsg(pagination);
		@SuppressWarnings("unchecked")
		List<EnterpriseMessage> enterpriseMsgList = listResult.getResult();
		
		model.addAttribute("enterpriseMsgList", enterpriseMsgList);

		return "back_enterpriseMsg/enterpriseMsgList";
	}
	
	@RequestMapping(value="enterpriseBackDetail/{id}")
	public String loadDetail(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return "back_login/login";
		}
		
		EnterpriseMessage enterpriseMsg = enterpriseMapper.selectByPrimaryKey(id);
		model.addAttribute("enterpriseMsg", enterpriseMsg);
		
		return "back_enterpriseMsg/enterpriseMsgDetail";
	}
}
