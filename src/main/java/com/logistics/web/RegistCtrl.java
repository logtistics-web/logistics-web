package com.logistics.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.logistics.mapper.UserMapper;
import com.logistics.model.User;

@Controller
@RequestMapping("/")
public class RegistCtrl {

	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping(value = "/loadRegist")
	public String loadRegist(){
		return "register/register";
	}
	
	@RequestMapping("/regist")
	@ResponseBody
	public ModelAndView addNews(@ModelAttribute("SpringWeb") User user, HttpServletRequest request, ModelMap  model) {
		
		User record = new User();
		
		User userq = userMapper.findByUserName(user.getName());
		if(userq != null){
			Map map = new HashMap();
			map.put("error", "用户名已经存在，请重新输入");
			return new ModelAndView("redirect:/loadRegist");
		}
		else{
			record.setName(user.getName());
			record.setPassword(user.getPassword());
			record.setPhone(user.getPhone());
			record.setQuestion(user.getQuestion());
			record.setResult(user.getResult());
			record.setSex(user.getSex());
			
			userMapper.insert(record);
		}
		return new ModelAndView("redirect:/login");
	}
}
