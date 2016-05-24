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
	public String loadModify(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		CarMessage carMessage = carMessageMapper.selectByPrimaryKey(id);
		model.addAttribute("carMessage", carMessage);
		
		return "carMsg/carMsgDetail";
	}
	
	@RequestMapping("/carsLoadAdd")
	public String loadAdd(){
		
		return "carMsg/carfabu";
	}
	
	@RequestMapping("/addGarMsg")
	@ResponseBody
	public ModelAndView addNews(@ModelAttribute("SpringWeb") CarMessage carMsg, HttpServletRequest request, ModelMap  model) {
		
		CarMessage record = new CarMessage();
//		record.set
		// TODO setAddUser setAddTime
		
		carMessageMapper.insert(record);
		
		return new ModelAndView("redirect:/carList");
	}
	
	@RequestMapping("/modifyCarMsg")
	@ResponseBody
	public ModelAndView modifyNews(@ModelAttribute("SpringWeb") CarMessage carMsg, HttpServletRequest request, ModelMap  model) {
		
		CarMessage record = carMessageMapper.selectByPrimaryKey(carMsg.getId());
		// TODO update setAddTime
		
		carMessageMapper.updateByPrimaryKey(record);
		return new ModelAndView("redirect:/carList");
	}
}
