  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>购物车</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" >
</head>
<body>
<div class="container-fluid">
	<div class="row1" >
		<div class="col-md-12" style="margin-right:0px;">	
				<div class="container" style="padding-left:900px; margin-right:0px;">
                    <div class="btn-group">
                        <button class="btn btn-defult" type="button">  <span class="glyphicon glyphicon-home"><a href="main" style="color:#000;">首页</a></span> </button> 
                        <button class="btn btn-defult" type="button"><a href="registerForm" style="color:#000;">注册</a></button>
                        <button class="btn btn-defult" type="button"><a href="loginForm" style="color:#000;">登录</a></button>
                        <div class="btn-group">
                            <button class="btn btn-defult dropdowm-toggle" data-toggle="dropdown" type="button">购物车
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="">收藏的宝贝</a></li>
                                <li><a href="cart.html">我的购物车</a></li>
                                <li><a href="">我的订单</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
          <div class="row">
             <img alt="Bootstrap Image Preview" src="images\logo.jpg" width="200px" height="140px"/>   
        </div>
     </div>
  </div>
  
<div class="row">
		<div class="col-md-12">
		<form action="good_delete" method="post">
			<table class="table">
				<thead>
					<tr>
						<th>
							商品图片
						</th>
						<th>
							商品名称
						</th>
						<th>
							价格
						</th>
						<th>
							数量
						</th>
						<th>
							减少
						</th>
						<th>
							删除
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${requestScope.cart_list }" var="cart_list">
					<tr class="danger">
						<td>
							<img alt="picture" src="images/${cart_list.cart_picture}" width="140px" height="160px"/>
						</td>
						<td>
							${cart_list.good_name }
						</td>
						<td>
							¥${cart_list.good_price }
						</td>
						<td>
							${cart_list.cart_count }
						</td>
						<td>
							<a href="good_reduce?user_id=${sessionScope.user_session.userid }&good_id=${cart_list.good_id }" class="btn btn-default" role="button">减少</a>
						</td>
						<td>
							<button type="submit" >删除</button>
							<input type="hidden" method="post" name="good_id" value="${cart_list.good_id }" />
							<input type="hidden" name="user_id" value="${sessionScope.user_session.userid }">
							
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
		<a href="good_clear?user_id=${sessionScope.user_session.userid }" class="btn btn-default" role="button">清空</a>
		</div>
		<div class="col-md-6">
		<a href="goodShow" class="continue">继续选购</a>
		</div>
	</div>
	 <div class="container">
             <div class="row" style="margin:20px;">
                 <div class="col-md-12" style="height:50px;" >
                     <p style="text-align:center;">Copyright ©2008 [使用者网站] Powered By [网站程序名称] Version 1.0.0</p>

                </div>
            </div>
        </div>
</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>

</body>
</html>