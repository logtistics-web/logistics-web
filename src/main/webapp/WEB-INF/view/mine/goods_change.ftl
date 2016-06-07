<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>货物信息发布</title>
<link rel="stylesheet" href="logistics/CSS/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/fabu.css" type="text/css" media="all" />

<!--// css -->
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
</head>

</head>


<body bgcolor="#ffffff">


<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a>货物消息修改</a>
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


<body bgcolor="#ffffff">

<form method="POST" action="${rc.contextPath}/modifyGoods" name="form1">
<input type="hidden" name="id" value="${goodsMsg.id}"/>
  <table width="806" border="0" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="176" >
        <p align="center">货物名称：</p>
      </td>
      <td width="228" >
        <p align="center"><div class="fabu1"><input type="text" name="goodsname" size="25" value="${goodsMsg.goodsname}"></p>
      </td>
      <td width="151">
      <p align="center">货物类型：</p>      </td>
      <td width="251" >
        <p align="center" ><div class="fabu1"><input type="text" name="gclass" size="25" value="${goodsMsg.gclass}"></p></div>
      </td>
    </tr>
    <tr>
      <td>
      <p align="center">货物数量：</p>      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="goodsnumber" size="25" value="${goodsMsg.goodsnumber}"></p>
      </td>
      <td>
        <p align="center">数量单位：</p>
      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="goodsunit" size="25" value="${goodsMsg.goodsunit}"></p>
      </td>
    </tr>
    <tr>
      <td >
      <p align="center">起始省份：</p>      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="stareprovince" size="25" value="${goodsMsg.stareprovince}"></p>
      </td>
      <td >
        <p align="center">起始城市：</p>
      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="startcity" size="25" value="${goodsMsg.startcity}"></p>
      </td>
    </tr>
    <tr>
      <td>
      <p align="center">抵达省份：</p>      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="endprovince" size="25" value="${goodsMsg.endprovince}"></p>
      </td>
      <td>
        <p align="center">抵达城市：</p>
      </td>
      <td>
        <p align="center"><div class="fabu1"><input type="text" name="endcity" size="25" value="${goodsMsg.endcity}"></p>
      </td>
    </tr>
    <tr>
      <td>
         <p align="center">联系人：</p> </td>
      <td>
        <p align="center"><div class="fabu1"><input type="text" name="linkman" size="25" value="${goodsMsg.linkman}"></p>
      </td>
      <td>
         <p align="center">联系电话：</p> 
      </td>
      <td>
       <p align="center"><div class="fabu1"><input type="text" name="phone" size="25" value="${goodsMsg.phone}"></p>
      </td>
    </tr>
    <tr>
      
     <td>
      <p align="center">运输类型：</p>      </td>
      <td >

      <p align="left"><div class="fabu1">

      <select size="1" name="style">
       <option value="${goodsMsg.style}"selected>${goodsMsg.style}</option>
        <option value="快速">快速</option>
        <option value="特快">特快</option>
        <option value="加急">加急</option>
      </select>
      </div>
     </p>
     </td>
      <td>
        
      </td>
    </tr>
    <tr>
      <td>
      <p align="center">备注：</p>      </td>
      <td colspan="3">
       <p align="left"><div class="fabu1"><input type="text" name="remark" size="88" value="${goodsMsg.remark}"></p>
      </td>
    </tr>
     <tr>
      <td height="58" colspan="4">
        <p align="center">
        <input type="submit" name="show" value="确认修改" onClick="return check()">&nbsp;&nbsp;<a href="${rc.contextPath}/loadGoodsMsgList">返回</a>
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










