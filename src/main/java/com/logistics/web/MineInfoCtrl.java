package com.logistics.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.logistics.mapper.CarMessageMapper;
import com.logistics.mapper.EnterpriseMessageMapper;
import com.logistics.mapper.GoodsMessageMapper;
import com.logistics.mapper.UserMapper;
import com.logistics.model.CarMessage;
import com.logistics.model.EnterpriseMessage;
import com.logistics.model.GoodsMessage;
import com.logistics.model.User;

@Controller
@RequestMapping("/")
public class MineInfoCtrl {
	
	@Autowired
	private CarMessageMapper carMsgMapper;
	@Autowired
	private GoodsMessageMapper goodsMsgMapper;
	@Autowired
	private EnterpriseMessageMapper enterpriseMsgMapper;
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping(value = "/loadMinePage")
	public String loadMinePage(){
		
		return "mine/gerenzhongxin";
	}
	
	@RequestMapping("/modifyMineInfo")
	@ResponseBody
	public ModelAndView modifyInfo(@ModelAttribute("SpringWeb") User user, HttpServletRequest request, ModelMap  model){
		
		User result = (User) request.getSession().getAttribute("user");
		result.setPassword(user.getPassword());
		userMapper.updateByPrimaryKeySelective(result);
		return new ModelAndView("redirect:/loadMinePage");
		
	}
	@RequestMapping(value = "/loadGoodsMsgList")
	public String loadGoodsMsgList( ModelMap model,HttpServletRequest request){
		User userq = (User) request.getSession().getAttribute("user");
		List<GoodsMessage> goodsList = goodsMsgMapper.getGoodsMsgByUser(userq.getName());
		model.addAttribute("goodsList",goodsList);
		return "mine/gerenzhongxin_goofs";
	}
	@RequestMapping(value = "/loadCarMsgList")
	public String loadCarMsgList(ModelMap model,HttpServletRequest request){
		User userq = (User) request.getSession().getAttribute("user");
		List<CarMessage> carList = carMsgMapper.getCarMsgByUser(userq.getName());
		model.addAttribute("carList",carList);
		return "mine/gerenzhongxin_car";
	}
	@RequestMapping(value = "/loadEnterpriseMsgList")
	public String loadEnterpriseMsgList(ModelMap model,HttpServletRequest request){
		User userq = (User) request.getSession().getAttribute("user");
		List<EnterpriseMessage> enterpriseList = enterpriseMsgMapper.getEnterpriseMsgByUser(userq.getName());
		model.addAttribute("enterpriseList",enterpriseList);
				
		return "mine/gerenzhongxin_enterprise";
	}
	@RequestMapping(value = "/loadMineMsg")
	public String loadMineMsg(ModelMap model,HttpServletRequest request){
		User userq = (User) request.getSession().getAttribute("user");
		model.addAttribute("userq",userq);
		return "mine/gerenzhongxin_gerenxinxi";
	}
}
