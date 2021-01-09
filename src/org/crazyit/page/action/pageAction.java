package org.crazyit.page.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class pageAction extends ActionSupport{

	private int page;

	public pageAction() {
		
	}
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	
	public String setPage1() {
		System.out.println(page);
		ActionContext.getContext().put("nowPage", page);
		return SUCCESS;
	}
}
