package com.logistics.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class MainCtrl {

	@RequestMapping(value = "/index")
	public ModelAndView toIndex(){
		return new ModelAndView("index");
	}
}
