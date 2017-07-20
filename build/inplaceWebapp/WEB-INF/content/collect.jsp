<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>我的收藏</title>

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
                                <li><a href="collect?userId=${sessionScope.user_session.userid }">我的收藏</a></li>
                                <li><a href="cart?user_id=${sessionScope.user_session.userid }">我的购物车</a></li>
                                <li><a href="order?user_id=${sessionScope.user_session.userid }">我的订单</a></li>
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
		<form action="collect_delete" method="post">
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
							删除
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${requestScope.collect_list }" var="collect_list">
					<tr class="danger">
						<td>
							<img alt="picture" src="images/${collect_list.goodPicture}" width="140px" height="160px"/>
						</td>
						<td>
							${collect_list.goodName }
						</td>
						<td>
							¥${collect_list.goodPrice }
						</td>
						<td>
							<a href="collect_delete?userId=${sessionScope.user_session.userid }&goodId=${collect_list.goodId }" class="btn btn-default" role="button">减少</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
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