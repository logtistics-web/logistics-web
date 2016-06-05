package com.logistics.web.back;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.logistics.model.Manage;
import com.logistics.model.User;

@Controller
@RequestMapping("/")
public class BackCtrl {
	
	@RequestMapping(value = "/backIndex")
	public ModelAndView toIndex(HttpServletRequest request){
		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return new ModelAndView("back_login/login");
		}
		return new ModelAndView("backIndex");
	}
}