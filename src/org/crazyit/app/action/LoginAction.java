package org.crazyit.app.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	// ��װ���������username��password��Ա����
	private String username;
	private String password;

	// username��setter��getter����
	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return this.username;
	}

	// password��setter��getter����
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return this.password;
	}

	public String execute() throws Exception {
		if (getUsername().equals("admin") && getPassword().equals("1234567")) {
			addActionMessage("��������������ʾ������index.jspҳ��");
			ActionContext ctx = ActionContext.getContext();
			Map<String, Object> session = ctx.getSession();
			session.put("user", getUsername());
			return SUCCESS;
		}
		addActionMessage("�û������������");
		return ERROR;
	}
}