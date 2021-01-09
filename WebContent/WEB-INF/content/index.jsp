<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.crazyit.page.action.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>首页</title>
	<link rel="stylesheet" type="text/css" href="/WarehouseManagement/assets/css/indexForm.css"/>
	<link rel="stylesheet" type="text/css" href="/WarehouseManagement/assets/css/indexMain.css"/>
	<script src="/WarehouseManagement/bootstrap/js/jquery.min.js"></script>	
	<script>
		function one(objStr) {
			document.getElementById('light').style.display = 'block';
			document.getElementById('fade').style.display = 'block';
			
			$('#goods_id').attr("readonly","readonly");
			
			objStr = objStr.substring(1,objStr.length-1);
			obj = objStr.split(',')
			//console.log(obj)
			
			$("#goods_id").val(obj[0]);
			$("#goods_name").val(obj[1]);
			$("#goods_text").val(obj[2]);
			$("#goods_type").val(obj[3]);
			$("#total_num").val(obj[4]);
			$("#now_num").val(obj[5]);
			$("#price").val(obj[6]);
			$("#discount").val(obj[7]);
			$("#idgood").val(obj[8]);
		}
	
		function two() {
			document.getElementById('light').style.display = 'none';
			document.getElementById('fade').style.display = 'none';
		}
		
		function save(){
			document.getElementById('light2').submit();
		}
		
		function search(){
			document.getElementById('searchForm').submit();
		}
	</script>
</head>
<body>
	<div class="top-bar">
		<div class="top-bar-title">
			<h3>超市货物管理系统</h3>
		</div>
		<div class="top-bar-info">
			<div><img src="/WarehouseManagement/assets/deAvatar.png"/></div>
			<div><h3>admin</h3></div>
		</div>
	</div>

	<div class="index-table">
		<div class="card">
			<div class="card-body">
				<h3 class="card-title">货物列表</h3>
				<h6 class="card-subtitle">超市所有货物清单</h6>
			
			<div class="tool-bar">
				<form class="search-form" id="searchForm" action="search.action" method="post">
					<div class="search-bar">
						<input class="form-control" type="text" placeholder="请输入货物编号" style="padding: 0 .75rem;" name="goods_id">
					</div>
					
					<div class="search-bar">
						<input class="form-control" type="text" placeholder="请输入货物名称" style="padding: 0 .75rem;" name="goods_name">
					</div>
							
					<select class="form-control select-type" name="goods_type" form="searchForm">
						<option value="none" selected disabled>货物类别</option>
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
					
					<button class="btn btn-secondary search-btn" style="line-height:25px;" onclick="search()">
					<svg t="1609852205847" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2810" width="25" height="25"><path d="M742 626.5c-30.6 48.4-72.4 88.9-121.9 117.8l199 199L939 823.5l-197-197z" fill="#ffffff" p-id="2811"></path><path d="M441.1 809.8C235.6 809.8 68.3 642.6 68.3 437c0-205.6 167.2-372.8 372.8-372.8 205.6 0 372.8 167.2 372.8 372.8 0 205.6-167.2 372.8-372.8 372.8z m0-711.8c-186.9 0-339 152.1-339 339s152.1 339 339 339 339-152.1 339-339-152-339-339-339z" fill="#ffffff" p-id="2812"></path><path d="M819.1 960.2c-4.3 0-8.7-1.7-12-5l-199-199c-3.7-3.7-5.5-8.9-4.8-14.1 0.7-5.2 3.7-9.8 8.3-12.4 47-27.4 87.1-66.2 116.1-112.2 2.7-4.3 7.3-7.2 12.4-7.8 5-0.5 10.2 1.2 13.8 4.9l197 197c3.2 3.2 5 7.5 5 12s-1.8 8.8-5 12L831.1 955.3c-3.3 3.3-7.7 4.9-12 4.9z m-172-212.8l172 172 95.9-95.9L744.6 653c-26.5 37.1-59.7 69.2-97.5 94.4zM626.2 267.1c-4.7 0-9.4-1.9-12.7-5.8C505 137.4 348 213.8 346.4 214.6c-8.3 4.1-18.5 0.8-22.7-7.6-4.2-8.4-0.8-18.5 7.6-22.7 1.8-0.9 182.2-88.8 307.7 54.7 6.1 7 5.4 17.7-1.6 23.9-3.3 2.8-7.2 4.2-11.2 4.2z" fill="#ffffff" p-id="2813"></path></svg>
					</button>
					
					<a class="btn btn-secondary search-btn " style="width:100px;" href="${pageContext.request.contextPath}/index">
						重置
					</a>															
				</form>
				
				<a class="btn btn-success add-btn" href="${pageContext.request.contextPath}/goodsForm">添加货物</a>
				
			</div>				
			</div>
			
			<div class="table-responsive">
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">#</th>					
							<th scope="col">货物编号</th>
							<th scope="col">货物名称</th>
							<th scope="col">货物类别</th>							
							<th scope="col">总货量</th>
							<th scope="col">现存量</th>	
							<th scope="col">售价(元)</th>														
							<th scope="col">折扣</th>
							<th scope="col">操作</th>							
						</tr>
					</thead>
					<tbody>
						
						<s:iterator value="goodsList" var="b" status="L">
						<s:if test="(#L.index)>= #nowPage*10 && (#L.index)<= #nowPage*10+9">
							<tr>
								<th scope="row"><s:property value="#L.index+1" /></th>
								<td><s:property value="goods_id" /></td>
								<td><s:property value="goods_name" /></td>
								<td><s:property value="goods_type" /></td>
								<td><s:property value="total_num" /></td>
								<td><s:property value="now_num" /></td>
								<s:if test="#b.discount != 0">
									<td>
										<p style="text-decoration:line-through;margin:-4px 0 0 0";font-size:12px/><s:property value="price" /></p>
										<p style="margin:0;color:red;font-size:12px"><s:property value="price*discount/100" /></p>
									</td>
								</s:if>
								<s:else>
									<td><s:property value="price" /></td>		
								</s:else>
								
								<td><s:property value="discount" />%</td>																					
								<td>
									<a type="button" class="btn btn-primary" onclick="one('[${b.goods_id},${b.goods_name},${b.goods_text},${b.goods_type},${b.total_num},${b.now_num},${b.price},${b.discount},${b.id}]')">编辑</a>
									<a class="btn btn-danger" href="${pageContext.request.contextPath}/deleteGoods?id=${b.id}">删除</a>
								</td>
							</tr>
						</s:if>
						</s:iterator>
					</tbody>
				</table>
			</div>
			
			<div class="page-btn-bar">
			---
				<s:iterator value="goodsList" var="b" status="L">
					<s:if test="#L.index % 10 == 0">
					<a href="${pageContext.request.contextPath}/page?page=<s:property value="#L.index/10"/>">
						第<s:property value="#L.index/10+1"/>页
					</a>
					</s:if>
				</s:iterator>
				---
			</div>
		</div>
	</div>


    <form action="updateGoods"  method="post"  id="light2" >
	<div id="light" class="white_content">

		<div class="top">
			<div class="title">货物详细信息</div>
			<div class="digclose">
				<a href="javascript:void(0)" onclick="two()" class="xclose">x</a>
			</div>
		</div>

		<div class="list">
			<div class="top-list">
				<div class="flex1">
					<div class="item">货物编号</div>
					<div class="">
						<input type="text" class="shop_name_input_v"  id="goods_id" style="color:#bbb7b7" name="goods.goods_id">
					</div>
				</div>
				<div class="flex3">
					<div class="item">货物名称</div>
					<div class="">
						<input type="text" class="shop_name_input_v" id="goods_name" name="goods.goods_name">
					</div>
				</div>
			</div>


			<div class="item">货物描述</div>
			<div class="shop_detail_input">
				<textarea type="text" class="shop_detail_input_v" id="goods_text" name="goods.goods_text"></textarea>
			</div>


			<div class="bottom-list">
				<div class="flex1">
					<div class="item">货物类别</div>
					<div class="">
						<select class="shop_type_select_v" id="goods_type" name="goods.goods_type">
							<option disabled selected>---请选择---</option>
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
				</div>
				<div class="flex1">
					<div class="item">总货量</div>
					<div class="">
						<input type="text" class="shop_price_input_v" id="total_num" name="goods.total_num">
					</div>
				</div>
				<div class="flex1">
					<div class="item">现存量</div>
					<div class="">
						<input type="text" class="shop_price_input_v" id="now_num" name="goods.now_num">
					</div>
				</div>
				<div class="flex1">
					<div class="item">售价</div>
					<div class="">
						<input type="text" class="shop_price_input_v" id="price" name="goods.price">
					</div>
				</div>
				<div class="flex1">
					<div class="item">折扣</div>
					<div class="">
						<select class="shop_type_select_v" id="discount" name="goods.discount">
							<option disabled selected>选择折扣</option>
							<option value="0">不打折</option>
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
				</div>
			</div>
			<input  id="idgood" name="goods.id" style="margin-top:-60px;visibility:hidden"/>
		</div>

		<div class="bottom">
			<div class="save">
				<button type="button" class="savebtn" onclick="save()">保存</button>
			</div>
			<div class="close">
				<button type="button" class="closebtn" onclick="two()">取消</button>
			</div>
		</div>
	</div>
	</form>
	<div id="fade" class="black_overlay"></div>
</body>

</html>
