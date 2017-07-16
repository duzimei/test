<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>修改密码</title> 

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
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
		<div class="col-md-4" style="margin-top:60px;">
			<form role="form" action="modifyPassword" method="post">
			<font color="red" size="5px">${requestScope.mess}</font>
				<div class="form-group">
					<label for="exampleInputEmail1">
						用户名
					</label>
					<input class="form-control" id="loginname" type="text" name="loginname">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">
						旧密码
					</label>
					<input class="form-control" id="password" type="password" name="password">
				</div>
				<div class="form-group">
					<label for="phone">
						新密码
					</label>
					<input class="form-control" id="password" type="password" name="newPassword">
				</div>
			<div class="row" style="margin-top:10px; ">
            	<div class="col-md-5" >
            	</div>
            	<div class="col-md-7">
				<button class="btn btn-default" type="submit">
					提交
				</button>
                <button class="btn btn-default" type="reset">
				    重置
				</button>
				</div>
			</div>
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


    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>