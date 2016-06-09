<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>企业信息发布</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />


<link rel="stylesheet" href="../css/fabu.css" type="text/css" media="all" />
<style type="text/css">


</head>
<body bgcolor="#ffffff">


<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a>企业信息修改</a>
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
  <form method="POST" action="${rc.contextPath}/modifyEnterpriseMsg" name="form1">
  <input type="hidden" name="id" value="${enterpriseMsg.id}"/>
<table width="796" height="345" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  
  <tr>
    <td width="180" height="36" align="center">企业名称：</td>
    <td width="238" height="36">
    <div class="fabu1"><input type="text" name="enterprisrname" size="30" value="${enterpriseMsg.enterprisrname}"></div></td>
    <td width="121" height="36" align="center">经营类型：</td>
    <td width="247" height="36">
    <div class="fabu1"><input type="text" name="operation" size="30"></div></td>
  </tr>
  <tr>
    <td width="180" height="35" align="center">始发城市：</td>
    <td width="238" height="35">
    <div class="fabu1"><input type="text" name="emterprisetype" size="30" value="${enterpriseMsg.emterprisetype}></div></td>
    <td width="121" height="35" align="center">终点城市：</td>
    <td width="247" height="35">
    <div class="fabu1"><input type="text" name="fax" size="30" value="${enterpriseMsg.fax}></div></td>
  </tr>
  <tr>
    <td width="180" height="38" align="center">价格标注：</td>
    <td width="238" height="38">
    <div class="fabu1"><input type="text" name="workarea" size="30" value="${enterpriseMsg.workarea}></div></td>
    <td width="121" height="38" align="center">企业地址：</td>
    <td width="247" height="38">
    <div class="fabu1"><input type="text" name="address" size="30" value="${enterpriseMsg.address}></div></td>
  </tr>
  <tr>
    <td width="180" height="34" align="center">企业网址：</td>
    <td width="238" height="34">
    <div class="fabu1"><input type="text" name="http" size="30" value="${enterpriseMsg.http}></div></td>
    <td width="121" height="34" align="center">企业邮箱：</td>
    <td width="247" height="34">
    <div class="fabu1"><input type="text" name="emial" size="30" value="${enterpriseMsg.emial}></div></td>
  </tr>
  <tr>
    <td width="180" height="34" align="center">联系人：</td>
    <td width="238" height="34">
    <div class="fabu1"><input type="text" name="linkman" size="30" value="${enterpriseMsg.linkman}></div></td>
    <td width="121" height="34" align="center">联系方式：</td>
    <td width="247" height="34">
    <div class="fabu1"><input type="text" name="phone" size="30" value="${enterpriseMsg.phone}></div></td>
  </tr>
   <tr>
      <td width="180" height="78">
        <p align="center">企业简介：</p>
      </td>
      <td height="56" colspan="3">
    <div class="fabu2"> <input type="text" name="introduce" size="85" value="${enterpriseMsg.introduce}></div></p>
      </td>
    </tr>
  <tr>
    <td height="45" colspan="4" align="center">
      <p><input type="submit" value="确认修改" name="B1" onClick="return check()">&nbsp;&nbsp;<a href="${rc.contextPath}/loadEnterpriseMsgList">返回</a></td>
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