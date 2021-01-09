<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>登录页面</title>
	<scirpt type="text.javascript" src="/WarehouseManagement/bootstrap/js/jquery.min.js"></scirpt>
	<scirpt type="text.javascript" src="/WarehouseManagement/bootstrap/js/bootstrap.min.js"></scirpt>
	<link rel="stylesheet" type="text/css" href="/WarehouseManagement/bootstrap/css/bootstrap.min.css"/>
</head>
<body>

	<div class="title">
		<h3>超市货物管理系统</h3>
	</div>	
	<div class="wrap">
		<div class="title2">
			<h4>登录</h4>
		</div>	
		<form action="login.action" method="post" class="login-form">
		  <div class="form-group">
		    <input type="text" name="username" class="form-control" placeholder="请输入用户名">
		  </div>
		  <div class="form-group">
		    <input type="password" name="password" class="form-control" placeholder="请输入密码">
		   	<small class="form-text text-muted">默认admin,1234567</small>
		  </div>
		  <button type="submit" class="btn btn-primary">登录</button>
		</form>
	</div>
		
	<div class="tips">
		${tip }
		<s:actionmessage/>	
	</div>	
</body>

<style>

body{
	background-color:#333333;
}

.title {
	margin:50px auto;
	text-align:center;
	color:#fff;	
}

.title2 {
	text-align: center;
    margin-bottom: 20px;
    border-bottom: 2px solid #007bff;
}

.wrap {
	width:300px;
	margin:50px auto;
	padding:20px;
	box-sizing: content-box;
	background-color:#fefefe;
	border-radius:10px;
	box-shadow: 10px 10px 5px;
}

.login-form {
	width:300px;
	margin:0 auto;
}

.login-form button{
	width:300px;
}

.tips {
	color:#fff;
	text-align:center;
}

.tips ul {
		list-style-type: none;
	}
</style>

</html>
