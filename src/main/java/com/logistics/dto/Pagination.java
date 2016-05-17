package com.logistics.dto;

import java.util.Map;

public class Pagination {
	
	private Map condition;
	
	private Map sort;
	
	private long total;
	
	private int pageCount;
	
	private int currentPage;
	
	private static int DEFAULT_PAGE_COUNT = 10;
	
	private static int DEFAULT_CURRENT_PAGE = 1;

	public Map getCondition() {
		return condition;
	}

	public void setCondition(Map condition) {
		this.condition = condition;
	}

	public Map getSort() {
		return sort;
	}

	public void setSort(Map sort) {
		this.sort = sort;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getCurrentPage(){
		if(currentPage <= 0){
			return DEFAULT_CURRENT_PAGE;
		}
		return currentPage;
	}
	
	public int getPageCount(){
		if(pageCount <= 0){
			return DEFAULT_PAGE_COUNT;
		}
		return pageCount;
	}

	@Override
	public String toString() {
		return "Pagination [condition=" + condition + ", sort=" + sort + ", total=" + total
				+ ", pageCount=" + pageCount + ", currentPage=" + currentPage + "]";
	}
	
}
