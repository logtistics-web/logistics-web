<#assign c=JspTaglibs["http://java.sun.com/jstl/core_rt"]>
<#assign fmt=JspTaglibs["http://java.sun.com/jsp/jstl/fmt"]>
<#assign fn=JspTaglibs["http://java.sun.com/jsp/jstl/functions"]>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>企业信息</title>
<link rel="stylesheet" href="logistics/CSS/style.css">
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
<!--// css -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
</head>

</head>


<body bgcolor="#ffffff">
<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a href="index.html">企业信息</a>
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
<table border="1" width="804" align="center"bordercolor="#FFFFFF" cellpadding="0" cellspacing="0"bordercolordark="#333333" bordercolorlight="#FFFFFF">
<tr>
    
  </tr>
  <tr>
    <td width="18%" align="center"height="27">企业类型</td>
    <td width="17%" align="center"height="27">企业名称</td>
    <td width="17%" align="center"height="27">经营范围</td>
    <td width="17%" align="center"height="27">所属区域</td>
    <td width="17%" align="center"height="27">地址</td>
    <td width="18%" align="center"height="27">详细</td>
  </tr>
<#if enterpriseMsgList??>
<#list enterpriseMsgList as enterpriseMsg>
 <tr>
    <td width="17%" align="center" height="27">${enterpriseMsg.emterprisetype}</td>
    <td width="17%" align="center"height="27">${enterpriseMsg.enterprisrname}</td>
    <td width="17%" align="center"height="27">${enterpriseMsg.operation}</td>
    <td width="18%" align="center"height="27">${enterpriseMsg.workarea}</td>
    <td width="18%" align="center"height="27">${enterpriseMsg.address}</td>
    <td width="17%" align="center"height="27"><a href="${rc.contextPath}/enterpriseDetail/${enterpriseMsg.id}">详细</a>　</td>
  </tr>

</#list>
</#if>


<tr>
    <td width="804" height="30" colspan="9" align="right">


<table width="804" align="center" cellpadding="0" cellspacing="0">
	<tr>
    <td width="804" height="30" colspan="9" align="right">
    <h3 align="center"><a href="#"><span class="label label-info1">发布消息</span></a></h3>
      <div align="center">共页&nbsp;&nbsp;
        <a href="/logistics-web/Cars/CarMessage.jsp?topage=">第一页</a>
        <a href="/logistics-web/Cars/CarMessage.jsp?topage=">上一页</a>
        <a href="/logistics-web/Cars/CarMessage.jsp?topage=">下一页</a>
        <a href="/logistics-web/Cars/CarMessage.jsp?topage=">最后一页</a>
        <span class="bgcolor">
          <input name="topage" type="text" class="txt_grey" size="5" value="">页</span></div>
    </td>
</tr>
</table>
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




