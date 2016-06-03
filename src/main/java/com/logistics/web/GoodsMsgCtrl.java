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
import com.logistics.mapper.GoodsMessageMapper;
import com.logistics.model.GoodsMessage;
import com.logistics.service.GoodsMessageService;

@Controller
@RequestMapping("/")
public class GoodsMsgCtrl {
	
	@Autowired
	private GoodsMessageService goodsMsgService;
	@Autowired
	private GoodsMessageMapper goodsMsgMapper;
	
	@RequestMapping(value = "/goodsMsgList")
	public String loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {

		ListResult listResult = goodsMsgService.getGoodsMsg(pagination);
		@SuppressWarnings("unchecked")
		List<GoodsMessage> goodsMsgList = listResult.getResult();
		
		model.addAttribute("goodsMsgList", goodsMsgList);

		return "goodsMsg/goodsMsgList";
	}
	
	@RequestMapping(value="goodsMsgDetail/{id}")
	public String loadModify(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		GoodsMessage goodsMsg = goodsMsgMapper.selectByPrimaryKey(id);
		model.addAttribute("goodsMsg", goodsMsg);
		
		return "goodsMsg/goodsMsgDetail";
	}
	
	@RequestMapping("/goodsLoadAdd")
	public String loadAdd(){
		
		return "goodsMsg/goodsfabu";
	}
	
	@RequestMapping("/addGoods")
	@ResponseBody
	public ModelAndView addNews(@ModelAttribute("SpringWeb") GoodsMessage goodsMsg, HttpServletRequest request, ModelMap  model) {
		
		GoodsMessage record = new GoodsMessage();
//		record.set
		// TODO setAddUser setAddTime
		
		goodsMsgMapper.insert(record);
		
		return new ModelAndView("redirect:/goodsMsgList");
	}
	
	@RequestMapping("/modifyGoods")
	@ResponseBody
	public ModelAndView modifyNews(@ModelAttribute("SpringWeb") GoodsMessage goodsMsg, HttpServletRequest request, ModelMap  model) {
		
		GoodsMessage record = goodsMsgMapper.selectByPrimaryKey(goodsMsg.getId());
		
		// TODO update setAddTime
		
		goodsMsgMapper.updateByPrimaryKey(record);
		return new ModelAndView("redirect:/goodsMsgList");
	}
}