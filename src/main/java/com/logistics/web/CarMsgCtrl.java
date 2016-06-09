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
import com.logistics.mapper.CarMessageMapper;
import com.logistics.model.CarMessage;
import com.logistics.model.User;
import com.logistics.service.CarMessageService;

@Controller
@RequestMapping("/")
public class CarMsgCtrl {
	
	@Autowired
	private CarMessageService carMsgService;
	@Autowired
	private CarMessageMapper carMessageMapper;
	
	@RequestMapping(value = "/carMsgList")
	public String loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {

		ListResult listResult = carMsgService.getCarsMsg(pagination);
		@SuppressWarnings("unchecked")
		List<CarMessage> carMsgList = listResult.getResult();
		
		model.addAttribute("carMsgList", carMsgList);

		return "carMsg/carList";
	}
	
	@RequestMapping(value="carMsgDetail/{id}")
	public String loadDetail(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		CarMessage carMessage = carMessageMapper.selectByPrimaryKey(id);
		model.addAttribute("carMessage", carMessage);
		
		return "carMsg/carMsgDetail";
	}
	
	@RequestMapping("/carsLoadAdd")
	public String loadAdd(HttpServletRequest request){
		User userq = (User) request.getSession().getAttribute("user");
		if(userq == null){
			return "login/login";
		}
		return "carMsg/carfabu";
	}
	
	@RequestMapping("/addGarMsg")
	@ResponseBody
	public ModelAndView addCarMsg(@ModelAttribute("SpringWeb") CarMessage carMsg, HttpServletRequest request, ModelMap  model) {
		
		CarMessage record = new CarMessage();
		
		User userq = (User) request.getSession().getAttribute("user");
		if(userq == null){
			return new ModelAndView("login/login");
		}
		record.setTrademark(carMsg.getTrademark());
		record.setStyle(carMsg.getStyle());
		record.setCarload(carMsg.getCarload());
		record.setUsertime(carMsg.getUsertime());
		record.setTranspotstyle(carMsg.getTranspotstyle());
		record.setDrivename(carMsg.getDrivename());
		record.setLicencenumber(carMsg.getLicencenumber());
		record.setDrivertime(carMsg.getDrivertime());
		record.setLicencestyle(carMsg.getLicencestyle());
		record.setLinkman(carMsg.getLinkman());
		record.setLinkphone(carMsg.getLinkphone());
		record.setRmark(carMsg.getRmark());
		record.setAdduser(userq.getName());
		record.setBrand("未审核");
		carMessageMapper.insert(record);
		
		return new ModelAndView("redirect:/carMsgList");
	}
	
	@RequestMapping("/carsLoadModify/{id}")
	public String loadModify(@PathVariable Integer id,ModelMap model,HttpServletRequest request){
		User userq = (User) request.getSession().getAttribute("user");
		if(userq == null){
			return "login/login";
		}
		CarMessage carMsg = carMessageMapper.selectByPrimaryKey(id);
		model.addAttribute("carMsg", carMsg);
		return "mine/car_change";
	}
	
	@RequestMapping("/modifyCarMsg")
	@ResponseBody
	public ModelAndView modifyCarMsg(@ModelAttribute("SpringWeb") CarMessage carMsg, HttpServletRequest request, ModelMap  model) {
		
		CarMessage record = carMessageMapper.selectByPrimaryKey(carMsg.getId());
		record.setTrademark(carMsg.getTrademark());
		record.setStyle(carMsg.getStyle());
		record.setCarload(carMsg.getCarload());
		record.setUsertime(carMsg.getUsertime());
		record.setDrivename(carMsg.getDrivename());
		record.setLicencenumber(carMsg.getLicencenumber());
		record.setDrivertime(carMsg.getDrivertime());
		record.setLinkman(carMsg.getLinkman());
		record.setLinkphone(carMsg.getLinkphone());
		record.setLicencestyle(carMsg.getLicencestyle());
		record.setTranspotstyle(carMsg.getTranspotstyle());
		record.setRmark(carMsg.getRmark());
		carMessageMapper.updateByPrimaryKey(record);
		return new ModelAndView("redirect:/loadCarMsgList");
	}
}
