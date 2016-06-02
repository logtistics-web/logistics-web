<#assign c=JspTaglibs["http://java.sun.com/jstl/core_rt"]>
<#assign fmt=JspTaglibs["http://java.sun.com/jsp/jstl/fmt"]>
<#assign fn=JspTaglibs["http://java.sun.com/jsp/jstl/functions"]>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
Goods_xiangxi page


</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mining Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<!--// css -->
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
</head>

<jsp:include page="/top.jsp"/>
<body bgcolor="#ffffff">

<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a href="index.html">货物信息</a>
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
<table width="785" height="480" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  

<tr>
    <td width="17%" height="29" align="center">货物类型：</td>
    <td width="36%" height="29" align="center">${goodsMsg.style}</td>
    <td width="17%" height="29" align="center" valign="middle">货物名称：</td>
    <td width="30%" height="29" align="center">${goodsMsg.goodsname}</td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">货物数量：</td>
    <td width="36%" height="29" align="center"> ${goodsMsg.goodsnumber}</td>
    <td width="17%" height="29" align="center" valign="middle">数量单位：</td>
    <td width="30%" height="29" align="center"> ${goodsMsg.goodsunit}</td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">起始省份：</td>
    <td width="36%" height="29" align="center">${goodsMsg.stareprovince}</td>
    <td width="17%" height="29" align="center" valign="middle">起始城市：</td>
    <td width="30%" height="29" align="center">${goodsMsg.startcity}</td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">抵达省份：</td>
    <td width="36%" height="29" align="center">${goodsMsg.endprovince}</td>
    <td width="17%" height="29" align="center" valign="middle">抵达城市：</td>
    <td width="30%" height="29" align="center">${goodsMsg.endcity}</td>
  </tr>
  <tr>
    <td width="17%" height="30" align="center">运输类型：</td>
    <td width="36%" height="30" align="center">${goodsMsg.style}</td>
    <td width="17%" height="30" align="center" align="middle">运输时间：</td>  
    <td width="30%" height="30" align="center">${goodsMsg.issuedate}</td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">联系电话：</td>
    <td width="36%" height="29" align="center">${goodsMsg.phone}</td>
    <td width="17%" height="29" align="center" valign="middle">联系人：</td>
    <td width="30%" height="29" align="center">${goodsMsg.linkman}</td>
  </tr>
  <tr>
    <td width="17%" height="31" align="center">发布时间：</td>
    <td width="36%" height="31" align="left" colspan="3">${goodsMsg.issuedate}</td>

  </tr>
  <tr>
    <td width="17%" height="1" align="center">备注：</td>
    <td width="83%" height="1" align="center" colspan="3">
      <p align="left"><textarea rows="3" name="S1" cols="76"${goodsMsg.remark}></textarea></td>
  </tr>
  <tr>
    <td width="17%" height="52" align="center">车辆要求：</td>
    <td width="83%" height="52" align="center" colspan="3">
      <p align="left"><textarea rows="3" name="S1" cols="76">${goodsMsg.request}</textarea></td>
  </tr>
<tr>
 
    <td width="17%" height="31" align="center">发布人：</td>
    <td width="36%" height="31" align="left" colspan="3">${goodsMsg.adduser}</td>
  
  </tr>

    <tr>
      <td width="100%" height="45" colspan="4" align="center">
        <a href="/logistics/Goods/Goods_change.jsp?id=">修改</a>&nbsp;&nbsp;
        <a href="/logistics/Goods/Goods_delete.jsp?id=">删除</a></td>
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
