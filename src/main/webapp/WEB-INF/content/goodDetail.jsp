<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>商品详情</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row1" >
		<div class="col-md-12" style="margin-right:0px;">	
				<div class="container" style="padding-left:900px; margin-right:0px;">
                    <div class="btn-group">
                        <button class="btn btn-defult" type="button"><span class="glyphicon glyphicon-home"><a href="main" style="color:#000;">首页</a></span> </button> 
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
        <div class="col-md-12" style="background:#EEE0E5; height:30px; margin:20px 0px 0px 0px;">       
        </div>
     </div>
     <form action="good_save" method="post">
     <div class="row">
		<div class="col-md-4" style="margin-top:10px; ">
          <div class="carousel slide" id="carousel-416528">
				<ol class="carousel-indicators">
					<li class="active" data-target="#carousel-416528" data-slide-to="0">
					</li>
					<li data-target="#carousel-416528" data-slide-to="1">
					</li>
					<li data-target="#carousel-416528" data-slide-to="2">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="First" style="width:420px;height:650px;" src="images/${good.goodspicture1}"/>
					</div>
					<div class="item">
						<img alt="Second" style="width:420px;height:650px;" src="images/${good.goodspicture2}" />
					</div>
					<div class="item good_picture">
						<img alt="Third" style="width:420px;height:650px;" src="images/${good.goodspicture3}"/>
					</div>
				</div> <a class="left carousel-control" href="#carousel-416528" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-416528" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
		<div class="col-md-8">
			<h3><strong>${good.goodsname}</strong></h3>
            <div class="col-md-12" style="background:#EEE0E5; height:90px; margin:20px 0px 0px 0px;">
                <p>价格：<del>￥20000</del></p> 
             <input type="radio" name="good_price" value="${good.goodsprice}" checked>  促销价：<span style="color:#c00; font-size:30px;">￥${good.goodsprice}</span>
            </div>
            <div style="height:150px;">
            </div>
            <div>
                颜色：<button type="button" style="background:#ffffff">白色</button><br /><br />
             
               尺码：<button type="button" style="background:#ffffff">S</button>
                    <button type="button" style="background:#ffffff">M</button>
                    <button type="button" style="background:#ffffff">L</button><br /><br />
               商品ID：<input type="text" name="good_id" value="${good.goodsid}" readonly /><br /><br />               
                数量：
                
                        <p><input type="text" name="cart_count" /></p>
                        <input type="hidden" name="user_id" value="${sessionScope.user_session.userid }">
                        <input type="hidden" name="cart_picture" value="${good.goodspicture1}">
                        <input type="hidden" name="good_name" value="${good.goodsname}">
                        <input type="submit" value="立即购买" />
                        <input type="submit" value="加入购物车" />
            </div>
		</div>
	</div>
	</form>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
 </body>
</html>