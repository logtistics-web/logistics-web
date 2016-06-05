package com.logistics.web.back;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.mapper.KnowledgeMapper;
import com.logistics.model.Knowledge;
import com.logistics.model.Manage;
import com.logistics.service.KnowledgeService;

@Controller
@RequestMapping("/")
public class KnowledgeBackCtrl {
	
	@Autowired
	private KnowledgeService knowledgeService;
	@Autowired
	private KnowledgeMapper knowledgeMapper;
	
	@RequestMapping(value = "/knowledgeBackList")
	public ModelAndView loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {
		
		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return new ModelAndView("back_login/login");
		}
		
		ListResult listResult = knowledgeService.getKnowledgeMsg(pagination);
		@SuppressWarnings("unchecked")
		List<Knowledge> kMsgList = listResult.getResult();
		
		model.addAttribute("kMsgList", kMsgList);

		return new ModelAndView("back_gallery/galleryList");
	}
	@RequestMapping(value="knowledgeBackMsgDetail/{id}")
	public String loadDetail(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return "back_login/login";
		}
		
		Knowledge knowledge = knowledgeMapper.selectByPrimaryKey(id);
		model.addAttribute("knowledge", knowledge);
		
		return "back_gallery/knowledgeshow";
	}
}
