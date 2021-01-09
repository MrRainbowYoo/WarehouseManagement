package org.crazyit.app.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	// 封装请求参数的username和password成员变量
	private String username;
	private String password;

	// username的setter和getter方法
	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return this.username;
	}

	// password的setter和getter方法
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return this.password;
	}

	public String execute() throws Exception {
		if (getUsername().equals("admin") && getPassword().equals("1234567")) {
			addActionMessage("哈哈，服务器提示！您在index.jsp页面");
			ActionContext ctx = ActionContext.getContext();
			Map<String, Object> session = ctx.getSession();
			session.put("user", getUsername());
			return SUCCESS;
		}
		addActionMessage("用户名或密码错误！");
		return ERROR;
	}
}