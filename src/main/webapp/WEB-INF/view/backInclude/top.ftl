<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="back_css/style_index.css">
	<title>杨凌物流联盟信息平台后台管理</title>
</head>
<body>
	<table cellSpacing=0 cellPadding=0 width="100%" background="back_images/header_bg.jpg" border=0>
  	<tr height=100>
    	<td width=400>
    		<img height=100 align="right" src="back_images/head_title.png" width=500>
    	</td>
    	<#if Session.user?exists>
    	<td  class="td1" align="right">
    		当前用户：${Session.user.getName()} &nbsp;
			<a style="margin-right:100px;" onclick="if (confirm('确定要退出系统么？')) return true; else return false;" href="${rc.contextPath}/backLogout" >退出系统</a> 
    	</td>
    	</#if>
    </tr>
    </table>	
</body>
</html>