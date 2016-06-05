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
	public String loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {

		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return "back_login/login";
		}
		
		ListResult listResult = carMsgService.getCarsMsg(pagination);
		@SuppressWarnings("unchecked")
		List<CarMessage> carMsgList = listResult.getResult();
		
		model.addAttribute("carMsgList", carMsgList);

		return "back_carMsg/carList";
	}
	
	@RequestMapping(value="carBackDetail/{id}")
	public String loadDetail(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return "back_login/login";
		}
		
		CarMessage carMessage = carMessageMapper.selectByPrimaryKey(id);
		model.addAttribute("carMessage", carMessage);
		
		return "back_carMsg/carMsgDetail";
	}
}
