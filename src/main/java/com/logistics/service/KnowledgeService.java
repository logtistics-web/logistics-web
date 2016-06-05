package com.logistics.service;

import com.logistics.dto.ListResult;
import com.logistics.dto.Pagination;

public interface KnowledgeService {

	public ListResult getKnowledgeMsg(Pagination pagination);
}
