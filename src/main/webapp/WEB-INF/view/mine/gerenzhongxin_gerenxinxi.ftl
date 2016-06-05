<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>个人中心</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mining Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />

<!--// css -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
</head>

</head>
<body >

<body bgcolor="#ffffff">


<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a>个人中心</a>
			</div>
			<div class="top-nav">
				<#include "include/header.ftl" />
				<!-- script-for-menu -->
					<script>
						 $( "span.menu" ).click(function() {
						$( "ul.nav1" ).slideToggle( 300, function() {
						// Animation complete.
							});
							});
					</script>
				<!-- /script-for-menu -->
			</div>
		</div>
</div>
<div class="skin-blue">
<div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                  <#include "include/left.ftl" />
                </section>
                <!-- /.sidebar -->
            </aside>
</div>
</div>
<div  style=" width:400px;height:300px; margin-left:500px; margin-top:80px;">
<div class="login_div">
	
	<form action="${rc.contextPath}/modifyMineInfo" class="login" method="post">
		<div class="nav">
			<div class="nav">
				<div class="col-xs-4 login_username">
					用户名:
				</div>
				<div class="col-xs-6 login_usernameInput">
					<input type="text" name="name" id="name" value="${userq.name}" placeholder="&nbsp;&nbsp;用户名/手机号"  readonly="readonly" />
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
					<input type="password" name="password1" id="psd" value="" placeholder="&nbsp;&nbsp;确认密码" />
				</div>
                
			</div>
            <div class="nav login_psdNav">
				<div class="col-xs-4">
					电&nbsp;&nbsp;&nbsp;话:
				</div>
				<div class="col-xs-6">
					<input type="text" name="phone" id="psd" value="${userq.phone}" placeholder="&nbsp;&nbsp;电话" />
				</div>
                </div>
				<div class="nav login_psdNav">
				<div class="col-xs-4">
					密保问题:
				</div>
				<div class="col-xs-6">
					<input type="text" name="question" id="psd" value="${userq.question}" placeholder="&nbsp;&nbsp;密保问题"  readonly="readonly"/>
				</div>
				
			</div>
            </div>
            <div class="nav login_psdNav">
				<div class="col-xs-4">
					问题答案:
				</div>
				<div class="col-xs-6">
					<input type="text" name="result" id="psd" value="${userq.result}" placeholder="&nbsp;&nbsp;问题答案" />
				</div>
				
			</div>

			<div class="col-xs-12 login_btn_div">
				<input type="submit" class="sub_btn"  style="font:15px; color:#66C;" value="提交" id="register" />
			</div>
        
	</form>
</div>
</div>
</div>


<div class="projects">
		<div align="left">
		  <!-- container --> 
		  
	  </div>
		<tr><td height="20" colspan="3"><div align="center">杨凌物流联盟信息平台&nbsp; 邮政编码：712100</div></td>
	  </tr>
   <tr align="center" valign="middle">
     <td height="23" colspan="3"><div align="center">Copyright 2016 西农信息工程学院</div></td>
     </tr><!-- //container -->
	</div>
</body>
</html>





