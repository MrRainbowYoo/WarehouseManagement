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
				alert("����д����!")
		}
	</script>

	<title>��ӻ���</title>
</head>
<body>

	<div class="title">
		<h3>���л������</h3>
	</div>
		
	<form action="addGoods" method="post" class="add-form" id="add-form">
	  <div class="form-group">
	    <label for="goods_name">��������</label>
	    <input class="form-control" id="goods_name" name="goods.goods_name" placeholder="�������������">
	  </div>
	  <div class="form-group">
	    <label for="goods_text">��������</label>
	    <textarea class="form-control" name="goods.goods_text" id="goods_text" placeholder="�������������"></textarea>
	  </div>
	
	  <div class="form-group">
	    <label for="goods_type">��������</label>
	    <select class="form-control" id="goods_type" name="goods.goods_type">
				<option disabled>��ѡ���������</option>
				<option value="��ʳ" selected>��ʳ</option>
				<option value="����">����</option>
				<option value="���">���</option>
				<option value="ˮ��">ˮ��</option>
				<option value="����">����</option>
				<option value="�߲�">�߲�</option>
				<option value="�ľ�">�ľ�</option>
				<option value="��ζƷ">��ζƷ</option>
				<option value="����Ʒ">����Ʒ</option>
				<option value="���������Ʒ">���������Ʒ</option>
	    </select>
	  </div>
	  <div class="form-group">
	    <label for="total_num">�ܻ���</label>
	    <input class="form-control" id="total_num" name="goods.total_num" placeholder="�������ܻ���">
	  </div>
	   <div class="form-group">
	    <label for="now_num">�ִ���</label>
	    <input class="form-control" id="now_num" name="goods.now_num" placeholder="�������ִ���">
	  </div>
	   <div class="form-group">
	    <label for="price">�ۼ�</label>
	    <input class="form-control" id="price" name="goods.price" placeholder="�������ۼ�">
	  </div>
	  <div class="form-group">
	    <label for="discount">�ۿ�</label>
	    <select class="form-control" id="discount"name="goods.discount">
				<option disabled>��ѡ���ۿ�</option>
				<option value="0" selected>������</option>
				<option value="10">һ��</option>
				<option value="20">����</option>
				<option value="30">����</option>
				<option value="50">����</option>
				<option value="75">������</option>
				<option value="80">����</option>
				<option value="90">����</option>
				<option value="95">������</option>
	    </select>
	  </div>
	  
	  <div class="btn-bar">
	  	<button type="button" class="btn btn-primary" onclick="add()">���</button>
		<button type="reset" class="btn btn-secondary">����</button>
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
