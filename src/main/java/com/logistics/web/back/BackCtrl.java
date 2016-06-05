package com.logistics.web.back;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class BackCtrl {
	
	@RequestMapping(value = "/backIndex")
	public ModelAndView toIndex(){
		return new ModelAndView("backIndex");
	}
}