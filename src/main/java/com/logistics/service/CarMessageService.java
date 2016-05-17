package com.logistics.service;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;

public interface CarMessageService {
	
	public ListResult getCarsMsg(Pagination pagination);
}
