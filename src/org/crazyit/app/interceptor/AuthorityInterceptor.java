package org.crazyit.app.interceptor;

import com.opensymphony.xwork2.*;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.*;

// 权限检查拦截器继承AbstractInterceptor类
public class AuthorityInterceptor extends AbstractInterceptor {
	// 拦截Action处理的拦截方法
	public String intercept(ActionInvocation invocation) throws Exception {
		// 取得请求相关的ActionContext实例
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		// 取出Session里的user属性
		String user = (String) session.get("user");
		// 如果没有登录，或者登录所用的用户名不是andy，都返回重新登录
		if (user != null && user.equals("admin")) {
			return invocation.invoke();
		}
		// 如果没有登录，将服务器提示放入ActionContext中
		ctx.put("tip", "您还没有登录，请输入admin,1234567登录系统");
		// 返回login的逻辑视图
		return Action.LOGIN;
		//return "login";
	}
}
