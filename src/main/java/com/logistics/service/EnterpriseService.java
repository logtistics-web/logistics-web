package com.logistics.service;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;

public interface EnterpriseService {

	public ListResult getEnterpriseMsg(Pagination pagination);
}
