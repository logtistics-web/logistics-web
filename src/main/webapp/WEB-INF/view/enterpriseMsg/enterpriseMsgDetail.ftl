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
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<!--// css -->
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
</head>


<body bgcolor="#ffffff">

	<!-- banner -->
	<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a href="index.html">企业信息展示</a>
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
<table width="786" border="1" align="center" cellpadding="0" cellspacing="0" >

  <tr>
    <td width="115" height="36">企业类型：</td>
    <td width="265" height="36">${enterpriseMsg.emterprisetype}</td>
    <td width="125" height="36">企业名称：</td>
    <td width="253" height="36">${enterpriseMsg.enterprisrname}</td>
  </tr>
  <tr>
    <td width="115" height="35">经营范围</td>
    <td width="265" height="35">${enterpriseMsg.operation}</td>
    <td width="125" height="35">所属区域：</td>
    <td width="253" height="35">${enterpriseMsg.workarea}</td> 
  </tr> 
  <tr>
    <td width="115" height="38">企业地址</td>
    <td width="265" height="38">${enterpriseMsg.address}</td>
    <td width="125" height="38">联系电话：</td>
    <td width="253" height="38">${enterpriseMsg.phone}</td>
  </tr>
  <tr>
    <td width="115" height="34">联系人：</td>
    <td width="265" height="34">${enterpriseMsg.linkman}</td>
    <td width="125" height="34">手机号：</td>
    <td width="253" height="34">${enterpriseMsg.phone}</td>
  </tr>
  <tr>
    <td width="115" height="35">传真号：</td>
    <td width="265" height="35">${enterpriseMsg.fax}</td>
    <td width="125" height="35">邮件网址</td>
    <td width="253" height="35">${enterpriseMsg.emial}</td>
  </tr>
  <tr>
    <td width="115" height="34">企业网址：</td>
    <td width="265" height="34">${enterpriseMsg.http}</td>
    <td width="125" height="34">类型介绍：</td>
    <td width="253" height="34">${enterpriseMsg.introduce}</td>
  </tr>
<tr>
    <td width="115" height="34">发布时间：</td>
    <td width="265" height="34">${enterpriseMsg.issusdate}</td>
    <td width="125" height="34">发布人：</td>
   <td width="253" height="34">${enterpriseMsg.adduser}</td>
  </tr>
    <tr>
   <td border="0" height="30" colspan="4">
        <p align="center">
      <a href="${rc.contextPath}/enterpriseMsgList">返回</a>
      </td>
  </tr>

</form>

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
