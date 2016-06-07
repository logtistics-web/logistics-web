<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册界面</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />

<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>

</head>

<body class="login_body">

<div class="login_div">
	<div class="col-xs-12 login_title"><a class="col-xs-12 login_title" href="index.html" style="color:#0FF">杨凌物流联盟信息平台</a>用户注册</div>
	<form action="${rc.contextPath}/regist" class="login" method="post">
		<div class="nav">
			<div class="nav login_nav">
				<div class="col-xs-4 login_username">
					用户名:
				</div><span class="errmsg" style="color:red">${map.error }</span></br>
				<div class="col-xs-6 login_usernameInput">
					<input type="text" name="name" id="name" value="" placeholder="&nbsp;&nbsp;用户名/手机号"  />
				</div>
			</div>
			<div class="nav login_psdNav">
				<div class="col-xs-4">
					密&nbsp;&nbsp;&nbsp;码:
				</div>
				<div class="col-xs-6">
					<input type="password" name="password" id="psd" value="" placeholder="&nbsp;&nbsp;密码" />
				</div>
				
			</div>
            <div class="nav login_psdNav">
				<div class="col-xs-4">
					确认密码:
				</div>
				<div class="col-xs-6">
					<input type="password" name="password2" id="psd" value="" placeholder="&nbsp;&nbsp;确认密码" />
				</div>
                
			</div>
            <div class="nav login_psdNav">
				<div class="col-xs-4">
					电&nbsp;&nbsp;&nbsp;话:
				</div>
				<div class="col-xs-6">
					<input type="text" name="phone" id="psd" value="" placeholder="&nbsp;&nbsp;电话" />
				</div>
                </div>
				<div class="nav login_psdNav">
				<div class="col-xs-4">
					密保问题:
				</div>
				<div class="col-xs-6">
					<input type="text" name="question" id="psd" value="" placeholder="&nbsp;&nbsp;密保问题" />
				</div>
				
			</div>
            <div class="nav login_psdNav">
				<div class="col-xs-4">
					问题答案:
				</div>
				<div class="col-xs-6">
					<input type="text" name="result" id="psd" value="" placeholder="&nbsp;&nbsp;问题答案" />
				</div>
				
			</div>
            <div class="nav login_psdNav">
				<div class="col-xs-4">
					性&nbsp;&nbsp;&nbsp;别:
				</div>
				<div style="margin-top:0px; height:30px;" >
					<select id="states" name="sex">
                    
            <option value="default">&ndash; 选择性别 &ndash;</option>
            <option value="1">男</option>
            <option value="0">女</option>
         
          </select>
			</div>	
			</div>
       

			<div class="col-xs-12 login_btn_div">
				<input type="submit" class="sub_btn"  style="font:15px; color:#66C;" value="提交注册" id="register" />
			</div>
        
	</form>

	<div class="col-xs-12 barter_btnDiv">
		<a href="${rc.contextPath}/login" style="color:#FFF;">已有账号？前去登录</a>
	</div>
</div>

</body>
</html>