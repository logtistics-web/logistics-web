package com.logistics.web.back;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.logistics.mapper.CarMessageMapper;
import com.logistics.model.CarMessage;
import com.logistics.model.Manage;
import com.logistics.service.CarMessageService;

@Controller
@RequestMapping("/")
public class CarBackCtrl {

	@Autowired
	private CarMessageService carMsgService;
	@Autowired
	private CarMessageMapper carMessageMapper;

	@RequestMapping(value = "/carBackList")
	public String loadList(ModelMap model, HttpServletRequest request) {

		Manage userq = (Manage) request.getSession().getAttribute("user");
		if (userq == null) {
			return "back_login/login";
		}
		List<CarMessage> carMsgList = carMessageMapper.getAllBackCarMsg();

		model.addAttribute("carMsgList", carMsgList);

		return "back_carMsg/carList";
	}
	
	@RequestMapping(value = "/check/{id}")
	public ModelAndView check(@PathVariable Integer id,HttpServletRequest request) {

		Manage userq = (Manage) request.getSession().getAttribute("user");
		if (userq == null) {
			return new ModelAndView("back_login/login");
		}
		List<CarMessage> carMsgList = carMessageMapper.getAllBackCarMsg();
		CarMessage carMsg = carMessageMapper.selectByPrimaryKey(id);
		carMsg.setBrand("已审核");
		carMessageMapper.updateByPrimaryKeySelective(carMsg);

		return new ModelAndView("redirect:/carBackList");
	}
	@RequestMapping(value = "carBackDetail/{id}")
	public String loadDetail(@PathVariable Integer id, ModelMap model, HttpServletRequest request) {

		Manage userq = (Manage) request.getSession().getAttribute("user");
		if (userq == null) {
			return "back_login/login";
		}

		CarMessage carMessage = carMessageMapper.selectByPrimaryKey(id);
		model.addAttribute("carMessage", carMessage);

		return "back_carMsg/carMsgDetail";
	}
}
