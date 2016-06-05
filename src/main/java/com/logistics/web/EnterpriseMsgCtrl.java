package com.logistics.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.mapper.EnterpriseMessageMapper;
import com.logistics.model.CarMessage;
import com.logistics.model.EnterpriseMessage;
import com.logistics.model.GoodsMessage;
import com.logistics.model.User;
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
	public String loadDetail(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		EnterpriseMessage enterpriseMsg = enterpriseMapper.selectByPrimaryKey(id);
		model.addAttribute("enterpriseMsg", enterpriseMsg);
		
		return "enterpriseMsg/enterpriseMsgDetail";
	}
	@RequestMapping("/enterpriseLoadAdd")
	public String loadAdd( HttpServletRequest request){
		
		User userq = (User) request.getSession().getAttribute("user");
		if(userq == null){
			return "login/login";
		}
		
		return "enterpriseMsg/enterprisefabu";
	}
	
	@RequestMapping("/addEnterprise")
	@ResponseBody
	public ModelAndView addEnterprise(@ModelAttribute("SpringWeb") EnterpriseMessage enterpriseMsg, HttpServletRequest request, ModelMap  model) {
		
		EnterpriseMessage record = new EnterpriseMessage();
		
		User userq = (User) request.getSession().getAttribute("user");
		if(userq == null){
			return new ModelAndView("login/login");
		}
		record.setAdduser(userq.getName());
		record.setEnterprisrname(enterpriseMsg.getEnterprisrname());
		record.setEmterprisetype(enterpriseMsg.getEmterprisetype());
		record.setFax(enterpriseMsg.getFax());
		record.setWorkarea(enterpriseMsg.getWorkarea());
		record.setAddress(enterpriseMsg.getAddress());
		record.setHttp(enterpriseMsg.getHttp());
		record.setEmial(enterpriseMsg.getEmial());
		record.setLinkman(enterpriseMsg.getLinkman());
		record.setPhone(enterpriseMsg.getPhone());
		enterpriseMapper.insert(record);
		
		return new ModelAndView("redirect:/enterpriseMsgList");
	}
	
	@RequestMapping("/enterpriseLoadModify/{id}")
	public String loadModify(@PathVariable Integer id,ModelMap model,HttpServletRequest request){
		User userq = (User) request.getSession().getAttribute("user");
		if(userq == null){
			return "login/login";
		}
		EnterpriseMessage enterpriseMsg = enterpriseMapper.selectByPrimaryKey(id);
		model.addAttribute("enterpriseMsg",enterpriseMsg);
		return "mine/enterprise_change";
	}
	
	@RequestMapping("/modifyEnterpriseMsg")
	@ResponseBody
	public ModelAndView modifyEnterpriseMsg(@ModelAttribute("SpringWeb") EnterpriseMessage enterpriseMsg, HttpServletRequest request, ModelMap  model) {
		
		EnterpriseMessage record = enterpriseMapper.selectByPrimaryKey(enterpriseMsg.getId());
		record.setEnterprisrname(enterpriseMsg.getEnterprisrname());
		record.setEmterprisetype(enterpriseMsg.getEmterprisetype());
		record.setFax(enterpriseMsg.getFax());
		record.setWorkarea(enterpriseMsg.getWorkarea());
		record.setAddress(enterpriseMsg.getAddress());
		record.setHttp(enterpriseMsg.getHttp());
		record.setEmial(enterpriseMsg.getLinkman());
		record.setLinkman(enterpriseMsg.getLinkman());
		record.setPhone(enterpriseMsg.getPhone());
		
		record.setIntroduce(enterpriseMsg.getIntroduce());
		enterpriseMapper.updateByPrimaryKey(record);
		return new ModelAndView("redirect:/loadEnterpriseMsgList");
	}
}
