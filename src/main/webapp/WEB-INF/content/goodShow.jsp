<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>商品浏览</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

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
                                <li><a href="cart">我的购物车</a></li>
                                <li><a href="">我的订单</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
				
		
		</div>
	</div>
	<div class="row">
            <div class="col-md-12" >
             <img alt="Bootstrap Image Preview" src="images\logo.jpg" class="logo"/>   
            </div>
        </div>
        <div class="row">
	    <div class="col-md-1" style="margin-left：10px; padding-left:30px;">
            <h4 style="font-size:21px; color:030303;"><strong>婚纱</strong></h4>
		</div>
		<div class="col-md-11" >
			<ul class="breadcrumb" style="background:#EEE0E5;">
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">西式</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">中式</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">配饰</a> <span class="divider">/</span>
				</li>
			</ul>
		</div>
    </div>
	<div class="row">
	<c:forEach items="${requestScope.good_list }" var="good">
	<form action="Detail" method="post" >
		<c:if test="${good.sortid=='婚纱'}" >
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="婚纱" src="images/${good.goodspicture1 }">
						<div class="caption">
							<p>
								${good.goodsname}
							</p>
							<p>
								<a class="btn btn-primary" href="show1.html" style="background:#FF1493 ">￥${good.goodsprice}</a>
								<p>
									<input type="text" name="goodsid" value="${good.goodsid }" readonly />
								</p>  
                                <a href="#">
                                    <span class="glyphicon glyphicon-heart" style="color:#FF1493"></span>
                                </a>
                                <p>
                                	<input type="submit" class="btn btn-default" value="详情" />
                                </p>
							</p>
						</div>
					</div>
                </div>  
          </c:if>
           </form>
          </c:forEach> 
         </div>                                                                                                                                                     	
         <div class="row">
	    	<div class="col-md-1" style="margin-left：0px; padding-left:10px;">
            	<h4 style="font-size:21px; color:030303;"><strong>男士礼服</strong></h4>
			</div>
			<div class="col-md-11" >
			<ul class="breadcrumb" style="background:#EEE0E5;">
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">英伦</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">复古</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">唐装</a> <span class="divider">/</span>
				</li>
			</ul>
			</div>
    	</div>
	<div class="row">
	<c:forEach items="${requestScope.good_list }" var="good">
	<form action="Detail" method="post">
		<c:if test="${good.sortid=='男士礼服'}" >
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="男士礼服" src="images/${good.goodspicture1 }">
						<div class="caption">
							<p>
								${good.goodsname}
							</p>
							<p>
								<a class="btn btn-primary" href="show1.html" style="background:#FF1493 ">￥${good.goodsprice}</a> 
								<p>
									<input type="text" name="goodsid" value="${good.goodsid }" readonly />
								</p>   
                                <a href="#">
                                    <span class="glyphicon glyphicon-heart" style="color:#FF1493"></span>
                                </a>
                                <p>
                                	<input type="submit" class="btn btn-default" value="详情" />
                                </p>
							</p>
						</div>
					</div>
                </div>  
          </c:if>
          </form>
          </c:forEach>  
          </div>  		
        <div class="col-md-1" style="margin-left：0px; padding-left:20px;">
            <h4 style="font-size:21px; color:030303;"><strong>配饰</strong></h4>
		</div>
        <div>
        <div class="col-md-11" >
			<ul class="breadcrumb" style="background:#EEE0E5;">
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">鞋子</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">头饰</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#" style="font-size:16px; color:#555555; font-family:宋体;">鲜花</a> <span class="divider">/</span>
				</li>
			</ul>
		</div>
    </div>
	<div class="row">
	<c:forEach items="${requestScope.good_list }" var="good">
	<form action="Detail" method="post">
		<c:if test="${good.sortid=='配饰'}" >
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="配饰" src="images/${good.goodspicture1 }">
						<div class="caption">
							<p>
								${good.goodsname}
							</p>
							<p>
								<a class="btn btn-primary" href="show1.html" style="background:#FF1493 ">￥${good.goodsprice}</a>  
								<p>
									<input type="text" name="goodsid" value="${good.goodsid }" readonly />
								</p>  
                                <a href="#">
                                    <span class="glyphicon glyphicon-heart" style="color:#FF1493"></span>
                                </a>
                                <p>
                                	<input type="submit" class="btn btn-default" value="详情" />
                                </p>
							</p>
						</div>
					</div>
                </div>  
          </c:if>
          </form>
          </c:forEach>                                                                                                                                                       
		</div>                                                                                                                                  
				<div class="col-md-4">
					
				</div>
				<div class="col-md-4">
					
				</div>
        </div>  
	<div class="container">
             <div class="row" >
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