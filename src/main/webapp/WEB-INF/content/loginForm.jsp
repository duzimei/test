<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
          <title>登录</title>
    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet"> 
    <script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.cookie.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		if($.cookie("rmbUser")=="true"){
			$("#checkbox").attr("checked",true);
			$("#loginname").val($.cookie("name"));
			$("#password").val($.cookie("pwd"));
			
		}
		
	});

	function Save(){
		if($("#checkbox:checked").length==1){
			var str_loginname=$("#loginname").val();
			var str_password=$("#password").val();
			$.cookie("rmbUser","true",{expires:7});
			$.cookie("name",str_loginname,{expires:7});
			$.cookie("pwd",str_password,{expires:7});
		}else{
			$.cookie("rmbUser","false",{expires:-1});
			$.cookie("name","",{expires:-1});
			$.cookie("pwd","",{expires:-1});
		}
		
	};
</script>	
</head>

 
   <body >

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12" >
                <a href="main"><img alt="Bootstrap Image Preview" src="images\logo.jpg" width="200px" height="140px"/></a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="margin-top:3px;" >
               
            </div>
        </div>
	<div class="row" style="background:url(images/denglu1.jpg); height:500px; width:1350px;">
		<div class="col-md-8">
		</div>
		<div class="col-md-4" style="margin-top:110px;">
			<form role="form" action="login" method="post">
			<font color="red" size="5px">${requestScope.message}</font>
				<div class="form-group">
					<label for="exampleInputEmail1">
						用户名
					</label>
					<input class="form-control" id="loginname" type="text" name="loginname">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputPassword1">
						密码
					</label>
					<input class="form-control" id="password" type="password" name="password">
				</div>
				
				<div class="form-group">	
				</div>
				<div class="checkbox"> 
					<label>
						<input type="checkbox" name="remember_password" id="checkbox"/>
							<span id="span_tip" style="margin-bottom:-2px;color:white;font-size:12px;">
							记住密码
							</span>
					</label>
                    <label>
						忘记密码
					</label>
				</div> 
				<button class="btn btn-default" type="submit">
					<a href="registerForm">注册</a>
				</button>
                <input class="btn btn-default" type="submit" onclick="Save()" value="登录"/>
				    
		
			</form>
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

    
  	<script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>