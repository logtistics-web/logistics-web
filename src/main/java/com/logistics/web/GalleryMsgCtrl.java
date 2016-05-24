package com.logistics.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;
import com.logistics.model.CarMessage;
import com.logistics.service.CarMessageService;

@Controller
@RequestMapping("/")
public class GalleryMsgCtrl {
	
	@Autowired
	private CarMessageService carMsgService;
	
	@RequestMapping(value = "/galleryMsgList")
	public String loadList(Pagination pagination, ModelMap model,
			HttpServletRequest request) {

		ListResult listResult = carMsgService.getCarsMsg(pagination);
		@SuppressWarnings("unchecked")
		List<CarMessage> carMsgList = listResult.getResult();
		
		model.addAttribute("carMsgList", carMsgList);

		return "gallery/galleryList";
	}
}
