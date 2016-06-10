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
                    <!-- Sidebar user panel -->
                   <#include "include/left.ftl" />
                </section>
                <!-- /.sidebar -->
            </aside>
</div>
</div>
<div class="xiangqing">
<table width="780"  border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
<tr>
  <td height="30px;">
  </td>
  </tr>
  <tr>
  </tr>

 
  <tr>
    <td width="804" height="29" align="center">货物类型</td>
    <td width="804" height="29" align="center">货物名称</td>
    <td width="804" height="29" align="center">货物数量</td>
    <td width="804" height="29" align="center">数量单位</td>
    <td width="804" height="29" align="center">起始省份</td>
    <td width="804" height="29" align="center">起始城市</td>
    <td width="804" height="29" align="center">抵达省份</td>
    <td width="804" height="29" align="center">抵达城市</td>
    <td width="804" height="29"><p align="center">
      操作</td>
  </tr>
<#if goodsList??>
<#list goodsList as goodsMsg>
	<tr style="padding:5px;">
<td width="804" height="29" align="center">${goodsMsg.style}</td>  
<td width="804" height="29" align="center">${goodsMsg.goodsname}</td>
<td width="804" height="29" align="center">${goodsMsg.goodsnumber}</td>
<td width="804" height="29" align="center">${goodsMsg.goodsunit}</td>
<td width="804" height="29" align="center">${goodsMsg.startcity}</td>
<td width="804" height="29" align="center">${goodsMsg.startcity}</td>
<td width="804" height="29" align="center">${goodsMsg.endprovince}</td>
<td width="804" height="29" align="center">${goodsMsg.endcity}</td>
<td width="804" height="29"> <p align="center">
  <a href="${rc.contextPath}/goodsLoadModify/${goodsMsg.id}">修改</a>
  <a href="${rc.contextPath}/goodsDelete/${goodsMsg.id}">删除</a></td>
</tr>
</#list>
</#if>

<tr>
    <td width="780" height="30" colspan="9" align="right">

<table width="780" align="center">
	<tr>
     <h3 align="center"><a href="${rc.contextPath}/goodsLoadAdd"><span class="label label-info1">发布消息</span></a></h3>
    <td width="780" height="30" colspan="9" align="right">
       <div align="center"><p>共1 页&nbsp;&nbsp;
          <a href="/logistics/Goods/Goods_show.jsp?topage=">第一页</a>
          <a href="/logistics/Goods/Goods_show.jsp?topage=">上一页</a>
          <a href="/logistics/Goods/Goods_show.jsp?topage=">下一页</a>
          <a href="/logistics/Goods/Goods_show.jsp?topage=">最后一页</a>
          <span class="bgcolor">
            <input name="topage" type="text" class="txt_grey" size="5" value="">
            页</span></p>
    <!-- <ul class="pagination pagination-sm">
					<li class="disabled"><a href="#"><span aria-hidden="true">«</span></a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
				</ul>-->
            <!--<p> <a href="/logistics/Goods/Goods.jsp"> 发布信息...</a><font size="4">&nbsp;--></div>
           
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





