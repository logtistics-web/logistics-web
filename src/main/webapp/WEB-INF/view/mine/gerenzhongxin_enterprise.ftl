<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>个人中心</title>
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
                    <#include "include/left.ftl" />
                </section>
                <!-- /.sidebar -->
            </aside>
</div>
</div>
<div class="xiangqing">
<table border="0" width="780" align="center"bordercolor="#FFFFFF" cellpadding="0" cellspacing="0"bordercolordark="#333333" bordercolorlight="#FFFFFF">
<tr>
   <td height="30">
   </td> 
  </tr>
   <tr>
    <td width="18%" align="center"height="27">企业类型</td>
    <td width="17%" align="center"height="27">企业名称</td>
    <td width="17%" align="center"height="27">经营范围</td>
    <td width="17%" align="center"height="27">所属区域</td>
    <td width="17%" align="center"height="27">地址</td>
    <td width="18%" align="center"height="27">操作</td>
  </tr>
<#if enterpriseList??>
<#list enterpriseList as enterpriseMsg>
 <tr>
    <td width="17%" align="center" height="27">${enterpriseMsg.emterprisetype}</td>
    <td width="17%" align="center"height="27">${enterpriseMsg.enterprisrname}</td>
    <td width="17%" align="center"height="27">${enterpriseMsg.operation}</td>
    <td width="18%" align="center"height="27">${enterpriseMsg.workarea}</td>
    <td width="18%" align="center"height="27">${enterpriseMsg.address}</td>
    <td width="17%" align="center"height="27"><a href="${rc.contextPath}/enterpriseLoadModify/${enterpriseMsg.id}">修改</a><a>删除</a>　</td>
  </tr>

</#list>
</#if>

<tr>
    <td width="780" height="30" colspan="9" align="right">


<table width="780" align="center" cellpadding="0" cellspacing="0">
	<tr>
    <td width="780" height="30" colspan="9" align="right">
    <h3 align="center"><a href="#"><span class="label label-info1">发布消息</span></a></h3>
      <div align="center">共1页&nbsp;&nbsp;
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





