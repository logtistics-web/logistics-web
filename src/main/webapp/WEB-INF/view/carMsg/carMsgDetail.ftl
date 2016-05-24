<#assign c=JspTaglibs["http://java.sun.com/jstl/core_rt"]>
<#assign fmt=JspTaglibs["http://java.sun.com/jsp/jstl/fmt"]>
<#assign fn=JspTaglibs["http://java.sun.com/jsp/jstl/functions"]>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="../CSS/style.css">
<title>

CarMessageshow
</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mining Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<!--// css -->
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
</head>

<jsp:include page="/top.jsp"/>
<body bgcolor="#ffffff">

	<!-- banner -->
	<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a href="index.html">车辆信息展示</a>
			</div>
			<div class="top-nav">
				<span class="menu">MENU</span>
				<ul class="nav1 cl-effect-15">
					<li><a href="${rc.contextPath}/index" class="网站首页">网站首页</a></li>
					<li><a href="${rc.contextPath}/goodsMsgList" data-hover="货物信息">货物信息</a></li>
					<li><a href="${rc.contextPath}/carMsgList" data-hover="车辆信息">车辆信息</a></li>
					<li><a href="${rc.contextPath}/enterpriseMsgList" data-hover="企业信息">企业信息</a></li>
					<li><a href="${rc.contextPath}/galleryMsgList" data-hover="物流知识">物流知识</a></li>
					<li><a href="${rc.contextPath}/index" data-hover="个人中心">个人中心</a></li>
				</ul>
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
<table width="796" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="0" colspan="4">
      </td>
  </tr>

  <tr>
    <td width="18%" height="34" align="center"><font size="4">车牌号</font></td>
    <td width="32%" height="34" align="center">${carMessage.trademark}</td>
    <td width="19%" height="34" align="center"><font size="4">车品名</font></td>
    <td width="31%" height="34" align="center">${carMessage.style}</td>
  </tr>
  <tr>
    <td width="18%" height="36" align="center"><font size="4">车辆类型</font></td>
    <td width="32%" height="36" align="center">${carMessage.style}</td>
    <td width="19%" height="36" align="center"><font size="4">车辆载重</font></td>
    <td width="31%" height="36" align="center">${carMessage.carload}吨</td>
  </tr>
  <tr>
    <td width="18%" height="37" align="center"><font size="4">使用时间</font></td>
    <td width="32%" height="37" align="center">${carMessage.usertime}年</td>
       <td width="18%" height="37" align="center"><font size="4">驾驶员姓名</font></td>
    <td width="32%" height="37" align="center">${carMessage.drivename}</td>
  </tr>
  <tr>
    <td width="19%" height="37" align="center"><font size="4">驾驶时间</font></td>
    <td width="31%" height="37" align="center">${carMessage.drivertime}</td>
    <td width="18%" height="36" align="center"><font size="4">驾照号码</font></td>
    <td width="32%" height="36" align="center">${carMessage.licencenumber}</td>
  </tr>
  <tr>
    <td width="19%" height="36" align="center"><font size="4">驾照类型</font></td>
    <td width="31%" height="36" align="center">${carMessage.licencestyle}</td>
   <td width="19%" height="37" align="center"><font size="4">运输类型</font></td>
     <td width="31%" height="37" align="center">${carMessage.transpotstyle}</td>
</tr>
  <tr>
    <td width="18%" height="42" align="center"><font size="4">联系人</font></td>
    <td width="32%" height="42" align="center">${carMessage.linkman}</td>
    <td width="19%" height="42" align="center"><font size="4">联系电话</font></td>
    <td width="31%" height="42" align="center">${carMessage.linkphone}</td>
  </tr>
  <tr>
    <td width="18%" height="65" align="center"><font size="4">备注</font></td>
    <td width="82%" height="65" colspan="3">${carMessage.rmark}
    </td>
  </tr>
  <tr>
    <td width="18%" height="42" align="center">发布时间</td>
    <td width="32%" height="42">
      <p align="center">${carMessage.issuedate}</td>
    <td width="19%" height="42" align="center">发布人</td>
  
    <td width="31%" height="42" align="center">${carMessage.adduser}</td>
  </tr>

 <tr>
      <td width="100%" height="33" colspan="4" align="center">
        <a href="/logistics/Cars/CarMessage_change.jsp?id=">修改</a>&nbsp;&nbsp;
        <a href="/logistics/Cars/CarMessage_delete.jsp?id=">删除</a>
    </td>
  </tr>

</table>
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
