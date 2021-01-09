<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  -->

	<script src="/WarehouseManagement/bootstrap/js/jquery.min.js"></script>	
	<link rel="stylesheet" type="text/css" href="/WarehouseManagement/bootstrap/css/bootstrap.min.css"/>
	<script>
		function add(){
			goods_name = $("#goods_name").val()
			goods_text = $("#goods_text").val()
			total_num = $("#total_num").val()
			now_num = $("#now_num").val()
			price = $("#price").val()

			if(goods_name != "" && goods_text != "" && total_num != "" && now_num != "" && price != "")
				document.getElementById("add-form").submit();
			else
				alert("请填写完整!")
		}
	</script>

	<title>添加货物</title>
</head>
<body>

	<div class="title">
		<h3>超市货物添加</h3>
	</div>
		
	<form action="addGoods" method="post" class="add-form" id="add-form">
	  <div class="form-group">
	    <label for="goods_name">货物名称</label>
	    <input class="form-control" id="goods_name" name="goods.goods_name" placeholder="请输入货物名称">
	  </div>
	  <div class="form-group">
	    <label for="goods_text">货物描述</label>
	    <textarea class="form-control" name="goods.goods_text" id="goods_text" placeholder="请输入货物描述"></textarea>
	  </div>
	
	  <div class="form-group">
	    <label for="goods_type">货物种类</label>
	    <select class="form-control" id="goods_type" name="goods.goods_type">
				<option disabled>请选择货物种类</option>
				<option value="零食" selected>零食</option>
				<option value="饮料">饮料</option>
				<option value="玩具">玩具</option>
				<option value="水果">水果</option>
				<option value="肉类">肉类</option>
				<option value="蔬菜">蔬菜</option>
				<option value="文具">文具</option>
				<option value="调味品">调味品</option>
				<option value="日用品">日用品</option>
				<option value="电子数码产品">电子数码产品</option>
	    </select>
	  </div>
	  <div class="form-group">
	    <label for="total_num">总货量</label>
	    <input class="form-control" id="total_num" name="goods.total_num" placeholder="请输入总货量">
	  </div>
	   <div class="form-group">
	    <label for="now_num">现存量</label>
	    <input class="form-control" id="now_num" name="goods.now_num" placeholder="请输入现存量">
	  </div>
	   <div class="form-group">
	    <label for="price">售价</label>
	    <input class="form-control" id="price" name="goods.price" placeholder="请输入售价">
	  </div>
	  <div class="form-group">
	    <label for="discount">折扣</label>
	    <select class="form-control" id="discount"name="goods.discount">
				<option disabled>请选择折扣</option>
				<option value="0" selected>不打折</option>
				<option value="10">一折</option>
				<option value="20">二折</option>
				<option value="30">三折</option>
				<option value="50">五折</option>
				<option value="75">七五折</option>
				<option value="80">八折</option>
				<option value="90">九折</option>
				<option value="95">九五折</option>
	    </select>
	  </div>
	  
	  <div class="btn-bar">
	  	<button type="button" class="btn btn-primary" onclick="add()">添加</button>
		<button type="reset" class="btn btn-secondary">重设</button>
	  </div>
	</form>
</body>

<style>

body{
	background-color:#333333;
}

.title {
	margin:25px auto;
	text-align:center;
	color:#fff;	
}

.add-form {
	width: 30%;
	margin: 20px auto;
	border: 1px solid #333;
	border-radius: 10px;
	padding: 10px;
	box-sizing: content-box;
	background-color:#fefefe;
	border-radius:10px;
	box-shadow: 10px 10px 5px;
	
}

.btn-bar {
	text-align: center;
}

</style>
</html>
