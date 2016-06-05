<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>车辆信息修改</title>
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
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/fabu.css" type="text/css" media="all" />

<style type="text/css">
.fabu2 input[type="text"] {
  width: 610px;
  color: #898888;
  background: none;
  outline: none;
  font-size:0.9em;
  padding:0em;
  margin-bottom: 0em;
  border: solid 1.5px #D5D4D4;
  -webkit-appearance: none;
  height:30px;

}
</style>

<!--// css -->
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
</head>

</head>


<body bgcolor="#ffffff">


<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a>车辆信息修改</a>
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

<form action="${rc.contextPath}/modifyCarMsg" method="POST" name="form1">
<input type="hidden" name="id" value="${carMsg.id}"/>
  <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="187" height="43">
        <p align="center">车牌号码：</p>
      </td>
      <td width="208" height="43">
       <div class="fabu1"><input type="text" name="trademark" size="25" value="${carMsg.trademark}"></div></p>
      </td>
      <td width="152" height="43">
        <p align="center">车辆类型：</p>
      </td>
      <td width="243" height="43">
        <div class="fabu1"><input type="text" name="style" size="25" value="${carMsg.style}"></div></p>
      </td>
    </tr>
    <tr>
      <td width="187" height="43">
        <p align="center">车辆载重：</p>
      </td>
      <td width="208" height="43">
       <div class="fabu1"><input type="text" name="carload" size="25" value="${carMsg.carload}"></div></p>
      </td>
      <td height="43" align="center">已使用年限：</td>
      <td height="43"><div class="fabu1"><input name="usertime" type="text" size="25" value="${carMsg.usertime}">
      年
      </div></td>
    </tr>
    
    <tr>
      <td height="43" align="center">驾驶员姓名：</td>
      <td height="43"><div class="fabu1"><input type="text" name="drivename" size="25" value="${carMsg.drivename}"></div></td>
      <td height="43" align="center">驾驶证号码：</td>
      <td height="43"><div class="fabu1"><input type="text" name="licencenumber" size="25" value="${carMsg.licencenumber}"></div></td>
    </tr>
    <tr>
      <td height="43" align="center">驾驶员驾龄:</td>
      <td height="43"><div class="fabu1"><input type="text" size="25" name="drivertime" value="${carMsg.drivertime}">年</div></td>
     <td width="152" height="43">
        <p align="center">联系人：</p>
      </td>
      <td width="243" height="43">
      <div class="fabu1"><input type="text" name="linkman" size="25" value="${carMsg.linkman}"></div></p>
      </td>
    </tr>
    <tr>
      <td width="187" height="43">
        <p align="center">联系电话：</p>
      </td>
      <td width="208" height="43">
       <div class="fabu1"><input type="text" name="linkphone" size="25" value="${carMsg.linkphone}">
       </div></td>
      <td height="43" align="center">驾驶证类型：</td>
      <td height="43"><select size="1" name="licencestyle" >
	  <option value="${carMsg.licencestyle}" selected>${carMsg.licencestyle}</option>
	  <option value="A2" >A2</option> 
	  <option value="A2" >A2</option> 
      <option value="B1" >B1</option>
      <option value="B2" >B2</option>
      <option value="C1">C1</option>
	  </select>
      &nbsp; &nbsp; 运输类型：
   <select name="transpotstyle">
   	  <option value="${carMsg.transpotstyle}" selected>${carMsg.transpotstyle}</option>
	  <option value="长途">长途</option>
	  <option value="短途">短途</option>
	  </select></td>
    </tr>
   
    <tr>
      <td width="187" height="43">
        <p align="center">备注：</p>
      </td>
      <td height="43" colspan="5">
        <div class="fabu2"><input type="text" name="rmark" value="${carMsg.rmark}"></div>
       </p>
      </td>
    </tr>
    <tr>
      <td height="40" colspan="4">
        <p align="center">
        <input type="submit" name="show" value="确认修改" onClick="return check()">&nbsp;&nbsp;<a href="${rc.contextPath}/loadCarMsgList">返回</a>
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