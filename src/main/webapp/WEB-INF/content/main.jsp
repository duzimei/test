<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>唯爱购物商城</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body >

   <div class="container-fluid">
	   <div class="row1" >
	   		<div class="col-md-5">
	   		当前在线人数：
		<c:out value="${applicationScope.count }">
		</c:out>
	   		</div>
		<div class="col-md-7" style="margin-right:0px;">	
				<div class="container" style="padding-left:400px; margin-right:0px;">
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
                        <div class="btn-group">
                            <button class="btn btn-defult dropdowm-toggle" data-toggle="dropdown" type="button">设置
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="changePassword">修改密码</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
				
		
		</div>
	</div>
	<div class="row">
		<div class="col-md-5" >
			<img alt="Bootstrap Image Preview" src="images\logo.jpg" class="logo" />
		</div>
		<div class="col-md-7 form-group-lg" style="padding: 50px 150px 10px 0px;">
          <div class="span10 " >
              <form class="navbar-form navbar-left input-group input-group-lg" role="search" >
						<div class="form-group" >
							<input class="form-control"  type="text" placeholder="请输入您想要的商品名"/>
						</div> 
						<button class="btn btn-primary btn-lg" type="submit" style="background:#FF1493">
							搜索
						</button>
				</form>

          </div>     
		</div>
	</div>
	<div class="row">
		<div class="col-md-4" style="margin-top:10px; ">
            <table class="table">
                <thead>
                    <tr>
                        <th><strong><a href="goodShow" style="font-size:21px; color:#030303; "><span class="glyphicon glyphicon-th-list">主题市场</span></a></strong></th>
                    </tr>
                </thead>
            </table>
		</div>
		<div class="col-md-8">
			<ul class="breadcrumb" style="margin-bottom:0px; background:#ffffff;" >
				<li>
					<a href="goodShow" style="font-size:21px; color:#030303;">最新上架</a> <span class="divider"></span>
				</li>
				<li>
					<a href="goodShow" style="font-size:21px; color:#030303;">今日特惠</a> <span class="divider"></span>
				</li>
				
			</ul>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4" style="padding-top:30px; padding-bottom:10px; background-color:#EEE0E5;">
            
			<ul >
                
                <ul class="list-inline" >
				    <li>
                    <strong><a href="goodShow" style="font-size:15px; color:#030303; ">婚纱</a></strong>
				    </li>
                    <li>
					   <a href="goodShow" class="type1">西式</a>
				    </li>
                    <li>
					   <a href="goodShow" class="type1">中式</a>
				    </li>
                </ul>
                <ul class="list-inline type1" style="padding:10px 0px 10px;">
				    <li>
                    <strong><a href="goodShow" style="font-size:15px; color:#030303; ">男士礼服</a></strong>
				    </li>
                    <li>
					   <a href="goodShow" class="type1">英伦</a>
				    </li>
                    <li>
					   <a href="goodShow" class="type1">复古</a>
				    </li>
                </ul>
                <ul class="list-inline" style="padding-bottom:10px;">
				    <li>
                    <strong><a href="goodShow" style="font-size:15px; color:#030303; ">配饰</a></strong>
				    </li>
                    <li>
					   <a href="goodShow" class="type1">鞋子</a>
				    </li>
                    <li>
					   <a href="goodShow" class="type1"> 头饰</a>
				    </li>
                </ul>
            </ul>	
		</div>
		<div class="col-md-8">
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
						<img alt="Carousel Bootstrap First" src="images\首页轮播1.jpg"  />
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Second" src="images\首页轮播2.jpg"  />
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third" src="images\首页轮播3.jpg"  />
					</div>
				</div> <a class="left carousel-control" href="#carousel-416528" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-416528" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>

        <div class="row">
            <div class="col-md-12" style="height:50px;">
            </div>
        </div>
	<div class="row">
	    <div class="col-md-1" style="margin-left：10px; padding-left:30px;">
            <h4 style="font-size:21px; color:030303;"><strong>唯爱</strong></h4>
		</div>
		<div class="col-md-11" >
			<ul class="breadcrumb" style="background:#EEE0E5;">
				<li>
					<a href="goodShow" style="font-size:16px; color:#555555; font-family:宋体;">婚纱</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="goodShow" style="font-size:16px; color:#555555; font-family:宋体;">男士礼服</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="goodShow" style="font-size:16px; color:#555555; font-family:宋体;">配饰</a> <span class="divider">/</span>
				</li>
			</ul>
		</div>
    </div>
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="Bootstrap Thumbnail First" src="images\首页婚纱.jpg">
						<div class="caption">
							
							<p>
								2017新款新娘结婚韩式一字肩中袖婚纱礼服奢华拖尾蕾丝显瘦
							</p>
							<p>
								<a class="btn btn-primary" href="#" style="background:#FF1493 ">￥10001</a>  
                                <a href="goodShow">
                                    <span class="glyphicon glyphicon-heart" style="color:#FF1493"></span>
                                </a>
							</p>
						</div>
					</div>
                </div>                                                                                                                                                         
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="Bootstrap Thumbnail Second" src="images\首页新郎.jpg">
						<div class="caption">
							<p>
								高档结婚奢华礼服韩版修身西服新郎西装男士英伦西服套装四件套
							</p>
							<p>
								<a class="btn btn-primary" href="#" style="background:#FF1493">￥999</a>  
                                <a href="goodShow">
                                    <span class="glyphicon glyphicon-heart" style="color:#FF1493"></span>
                                </a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="Bootstrap Thumbnail Third" src="images\首页配饰.jpg">
						<div class="caption">
							<p>
								新娘头饰珍珠皇冠结婚饰品发饰水钻发梳婚纱婚庆配饰王冠
							</p>
							<p>
								<a class="btn btn-primary" href="#" style="background:#FF1493 ">￥111</a>  
                                <a href="goodShow">
                                    <span class="glyphicon glyphicon-heart" style="color:#FF1493"></span>
                                </a>
							</p>
						</div>
					</div>
				</div>
        </div>     
              
        <div class="container">
             <div class="row" >
                 <div class="col-md-12" style="height:50px;" >
                     <p style="text-align:center;">Copyright ©2017 [唯爱] Powered By [wave] Version 1.0.0</p>

                </div>
            </div>
        </div>
    </div>
 </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>