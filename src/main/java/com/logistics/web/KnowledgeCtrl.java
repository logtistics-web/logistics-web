package com.logistics.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.mapper.KnowledgeMapper;
import com.logistics.model.Knowledge;
import com.logistics.service.KnowledgeService;

@Controller
@RequestMapping("/")
public class KnowledgeCtrl {

	@Autowired
	private KnowledgeService knowledgeService;
	@Autowired
	private KnowledgeMapper knowledgeMapper;
	
	@RequestMapping(value = "/knowledgeMsgList")
	public String loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {

		ListResult listResult = knowledgeService.getKnowledgeMsg(pagination);
		@SuppressWarnings("unchecked")
		List<Knowledge> kMsgList = listResult.getResult();
		
		model.addAttribute("kMsgList", kMsgList);

		return "gallery/galleryList";
	}
	@RequestMapping(value="knowledgeMsgDetail/{id}")
	public String loadDetail(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		Knowledge knowledge = knowledgeMapper.selectByPrimaryKey(id);
		model.addAttribute("knowledge", knowledge);
		
		return "gallery/knowledgeshow";
	}
}
