package org.crazyit.app.interceptor;

import com.opensymphony.xwork2.*;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.*;

// Ȩ�޼���������̳�AbstractInterceptor��
public class AuthorityInterceptor extends AbstractInterceptor {
	// ����Action��������ط���
	public String intercept(ActionInvocation invocation) throws Exception {
		// ȡ��������ص�ActionContextʵ��
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		// ȡ��Session���user����
		String user = (String) session.get("user");
		// ���û�е�¼�����ߵ�¼���õ��û�������andy�����������µ�¼
		if (user != null && user.equals("admin")) {
			return invocation.invoke();
		}
		// ���û�е�¼������������ʾ����ActionContext��
		ctx.put("tip", "����û�е�¼��������admin,1234567��¼ϵͳ");
		// ����login���߼���ͼ
		return Action.LOGIN;
		//return "login";
	}
}
