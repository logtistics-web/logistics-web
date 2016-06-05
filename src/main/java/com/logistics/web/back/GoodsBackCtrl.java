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
import com.logistics.mapper.GoodsMessageMapper;
import com.logistics.model.EnterpriseMessage;
import com.logistics.model.GoodsMessage;
import com.logistics.model.Manage;
import com.logistics.service.GoodsMessageService;

@Controller
@RequestMapping("/")
public class GoodsBackCtrl {

	@Autowired
	private GoodsMessageService goodsMsgService;
	@Autowired
	private GoodsMessageMapper goodsMsgMapper;
	
	@RequestMapping(value = "/goodsBackList")
	public String loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {

		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return "back_login/login";
		}
		
		ListResult listResult = goodsMsgService.getGoodsMsg(pagination);
		@SuppressWarnings("unchecked")
		List<GoodsMessage> goodsMsgList = listResult.getResult();
		
		model.addAttribute("goodsMsgList", goodsMsgList);

		return "back_goodsMsg/goodsMsgList";
	}
	
	@RequestMapping(value="goodsBackDetail/{id}")
	public String loadDetail(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		
		Manage userq = (Manage) request.getSession().getAttribute("user");
		if(userq == null){
			return "back_login/login";
		}
		
		GoodsMessage goodsMsg = goodsMsgMapper.selectByPrimaryKey(id);
		model.addAttribute("goodsMsg", goodsMsg);
		
		return "back_goodsMsg/goodsMsgDetail";
	}
}
