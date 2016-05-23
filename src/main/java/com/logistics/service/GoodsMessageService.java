package com.logistics.service;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;

public interface GoodsMessageService {
	
	public ListResult getGoodsMsg(Pagination pagination);
}
