<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>企业信息发布</title>
<link rel="stylesheet" href="logistics/CSS/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/fabu.css" type="text/css" media="all" />

<script language="javascript">
function check()
{
if(form1.name.value=="")
{
alert("请输入企业名称！1");
form1.name.focus();
return false;
}
if(form1.style.value=="")
{
alert("请输入企业类型！！！");
form1.style.focus();
return false();
}
if(form1.operation.value=="")
{
alert("请输入企业的经营范围！！");
form1.operation.focus();
return false;
}
if(form1.area.value=="")
{
alert("请输入企业所属区域！！");
form1.area.focus();
return false;
}
if(form1.address.value=="")
{
alert("请输入企业地址！！！");
form1.address.focus();
return false;
}
if(form1.phone.value=="")
{
alert("请输入企业联系电话！！！");
form1.phone.focus();
return false;
}
if(form1.linkman.value=="")
{
alert("请输入企业联系人！！！");
form1.linkman.focus();
return false;
}
if(form1.hand.value=="")
{
alert("请输入手机号！！！");
form1.hand.focus();
return false;
}
if(form1.fax.value=="")
{
alert("请输入企业传真号！！！");
form1.fax.focus();
return false;
}
if(form1.email.value=="")
{
alert("请输入企业邮件网址！！！");
form1.email.focus();
return false;
}
if(form1.web.value=="")
{
alert("请输入企业网址！！！");
form1.web.focus();
return false;
}
if(form1.intr.value=="")
{
alert("请输入企业类型介绍！！！");
form1.intr.focus();
return false;
}
}
</script>
<jsp:include page="/top.jsp"/>
</head>
<body bgcolor="#ffffff">


<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a>企业信息发布</a>
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
  <form method="POST" action="/logistics/Enterprise/enterpriseadd_config.jsp" name="form1">
<table width="796" height="345" border="0" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  
  <tr>
    <td width="115" height="36" align="center">企业名称：</td>
    <td width="265" height="36"><input type="text" name="enterprisrname" size="30"></td>
    <td width="125" height="36" align="center">经营类型：</td>
    <td width="253" height="36"><input type="text" name="emterprisetype" size="30"></td>
  </tr>
  <tr>
    <td width="115" height="35" align="center">始发城市：</td>
    <td width="265" height="35"><input type="text" name="emterprisetype" size="30"></td>
    <td width="125" height="35" align="center">终点城市：</td>
    <td width="253" height="35"><input type="text" name="fax" size="30"></td>
  </tr>
  <tr>
    <td width="115" height="38" align="center">价格标注：</td>
    <td width="265" height="38"><input type="text" name="workarea" size="30"></td>
    <td width="125" height="38" align="center">企业地址：</td>
    <td width="253" height="38"><input type="text" name="address" size="30"></td>
  </tr>
  <tr>
    <td width="115" height="34" align="center">企业网址：</td>
    <td width="265" height="34"><input type="text" name="http" size="30"></td>
    <td width="125" height="34" align="center">企业邮箱：</td>
    <td width="253" height="34"><input type="text" name="emial" size="30"></td>
  </tr>
  <tr>
    <td width="115" height="34" align="center">联系人：</td>
    <td width="265" height="34"><input type="text" name="linkman" size="30"></td>
    <td width="125" height="34" align="center">联系方式：</td>
    <td width="253" height="34"><input type="text" name="phone" size="30"></td>
  </tr>
   <tr>
      <td width="20%" height="78">
        <p align="center">企业简介：</p>
      </td>
      <td height="78" colspan="3">
      <input type="text" name="introduce" size="30"></p>
      </td>
    </tr>
  <tr>
   <td height="40" colspan="4">
        <p align="center">
      <a href="${rc.contextPath}/enterpriseMsgList">返回</a>
      </td>
  </tr>
</table>
</form>

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