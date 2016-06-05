package com.logistics.web.back;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.logistics.mapper.ManageMapper;
import com.logistics.model.Manage;
import com.logistics.model.User;

@Controller
@RequestMapping("/")
public class LoginBackCtrl {

	@Autowired
	private ManageMapper userMapper;
	
	@RequestMapping(value = "/backLogin")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Manage user = getUser(username, password);
		if (username == null && password == null) {
			return new ModelAndView("login/login");
		}
		if (user != null) {
			request.getSession().setAttribute("user", user);

			return new ModelAndView("backIndex");
		} else {
			Map map = new HashMap();
			map.put("error", "用户名或密码不正确，请重新输入！");
			return new ModelAndView("back_login/login", "map", map);
		}
	}

	private Manage getUser(String username, String password) {

		Manage fUser = userMapper.findByUserName(username);
		if (fUser != null) {
			if (password.equals(fUser.getPassword())) {
				return fUser;
			}
		}
		return null;
	}

	@RequestMapping("/backLogout")
	public String loginOut(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);// 防止创建Session
		if (session != null) {
			session.removeAttribute("user");
		}
		return "back_login/login";
	}
}
