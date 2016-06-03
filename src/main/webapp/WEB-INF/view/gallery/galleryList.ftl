<#assign c=JspTaglibs["http://java.sun.com/jstl/core_rt"]>
<#assign fmt=JspTaglibs["http://java.sun.com/jsp/jstl/fmt"]>
<#assign fn=JspTaglibs["http://java.sun.com/jsp/jstl/functions"]>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>物流知识</title>
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
				<a href="index.html">物流知识</a>
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
<table width="806" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
 
  <tr>
    <td width="25%" height="29" align="center">标题</td>
    <td width="25%" height="29" align="center">发布日期</td>
    <td width="25%" height="29" align="center">知识类型</td>
    <td width="25%" height="29" align="center">详细</td>
  </tr>

 <tr>
    <td width="40%" height="32" align="center"></td>
    <td width="20%" height="32" align="center"></td>
    <td width="20%" height="32" align="center"></td>
    <td width="20%" height="32" align="center">
   <a href="knowledgeshow.html" onClick="#">详细</a></td>
  </tr>

<tr>
    <td width="785" height="30" colspan="9" align="right">

<table width="784" align="center" cellpadding="0" cellspacing="0">
	<tr>
    <td width="784" height="30" colspan="9" align="center">
共 页
        <a href="/logistics/Knowledge/knowledge.jsp?topage=">第一页</a>
        <a href="/logistics/Knowledge/knowledge.jsp?topage=">上一页</a>
        <a href="/logistics/Knowledge/knowledge.jsp?topage=">下一页</a>
        <a href="/logistics/Knowledge/knowledge.jsp?topage=">最后一页</a>
        <span class="bgcolor">
	  <input name="topage" type="text" class="txt_grey" size="3" value="">页</span>
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
