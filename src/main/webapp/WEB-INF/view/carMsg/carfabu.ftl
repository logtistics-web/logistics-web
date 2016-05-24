<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>车辆信息发布</title>
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
<link rel="stylesheet" href="css/fabu.css" type="text/css" media="all" />
<Script language="javascript">
function check()
{
 if(form1.gclass.value=="")
{
alert("请填写货物类型！！");
form1.gclass.focus();
return false;
}
if(form1.gname.value=="")
{
alert("请填写货物名称！！！");
form1.gname.focus();
return false;
}
if(form1.gcount.value=="")
{
alert("请填写货物数量！！！");
form1.gcount.focus();
return false;
}
if(form1.gunit.value=="")
{
alert("请填写货物数量单位！！！");
form1.gunit.focus();
return false;
}
if(form1.gstartfirm.value=="")
{
alert("请填写起始省份！！！");
form1.gstartfirm.focus();
return false;
}
if(form1.gstartcity.value=="")
{
alert("请填写起始城市！！！");
form1.gstartcity.focus();
return false;
}
if(form1.gendfirm.value=="")
{
alert("请填写抵达省份！！！");
form1.gendfirm.focus();
return false;
}
if(form1.gendcity.value=="")
{
alert("请填写抵达城市！！！");
form1.gendfirm.focus();
return false;
}
if(form1.gtransstyle.value=="")
{
alert("请填写运输类型！！！");
form1.gtransstyle.focus();
return false;
}
if(form1.gtime.value=="")
{
alert("请填写运输时间！！！");
form1.gtime.focus();
return false;
}
if(form1.glink.value=="")
{alert("请填写联系人！！！");
form1.glink.focus();
return false;
}
if(form1.gphone.value=="")
{
alert("请填写联系电话！！！");
form1.gphone.focus();
return false;
}
if(form1.gremark.value=="")
{
alert("请填写备注！！！");
form1.gremark.focus();
return false;
}
if(form1.grequest.value=="")
{
alert("请填写要求！！！");
form1.grequest.focus();
return false;
}
}
</Script>
<!--// css -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
</head>

</head>


<body bgcolor="#ffffff">


<div class="banner">
		<div class="banner-content">
			<div class="logo">
				<a>车辆信息发布</a>
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

<form action="/logistics/Cars/CarMessageadd_config.jsp" method="POST" name="form1">
  <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="20%" height="43">
        <p align="center">车牌号码：</p>
      </td>
      <td width="28%" height="43">
       <div class="fabu1"><input type="text" name="numbers" size="20"></div></p>
      </td>
      <td width="22%" height="43">
        <p align="center">车辆类型：</p>
      </td>
      <td width="30%" height="43">
        <div class="fabu1"><input type="text" name="type" size="20"></div></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="42">
        <p align="center">车辆品名：</p>
      </td>
      <td width="28%" height="42">
       <div class="fabu1"><input type="text" name="carname" size="20"></div></p>
      </td>
      <td width="22%" height="42">
        <p align="center">车辆限量：</p>
      </td>
      <td width="30%" height="42">
        <div class="fabu1"><input type="text" name="loads" size="15">吨</div></p>
      </td>
    </tr>
    <tr>
      <td height="45" align="center">已使用年限：</td>
      <td height="45"><div class="fabu1"><input name="usetime" type="text" size="20"></div></td>
      <td height="45" align="center">运输类型：</td>
      <td height="45"><select name="style">
	  <option value="长途" selected >长途</option>
	  <option value="短途">短途</option>
	  </select></td>
    </tr>
    <tr>
      <td height="45" align="center">驾驶员姓名：</td>
      <td height="45"><div class="fabu1"><input type="text" name="name" size="20"></div></td>
      <td height="45" align="center">驾驶证号码：</td>
      <td height="45"><div class="fabu1"><input type="text" name="number" size="20"></div></td>
    </tr>
    <tr>
      <td height="45" align="center">驾驶员驾龄</td>
      <td height="45"><div class="fabu1"><input type="text" size="20" name="time">年</div></td>
      <td height="45" align="center">驾驶类型：</td>
      <td height="45"><select size="1" name="styles">
	  <option value="A1" selected>A1</option>
	  <option value="A2" >A2</option> 
      <option value="B1" >B1</option>
      <option value="B2" >B2</option>
      <option value="C1">C1</option>
	  </select></td>
    </tr>
    <tr>
      <td width="20%" height="45">
        <p align="center">联系电话：</p>
      </td>
      <td width="28%" height="45">
       <div class="fabu1"><input type="text" name="phone" size="20"></div></p>
      </td>
      <td width="22%" height="45">
        <p align="center">联系人：</p>
      </td>
      <td width="30%" height="45">
      <div class="fabu1"><input type="text" name="linkman" size="20"></div></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="78">
        <p align="center">备注：</p>
      </td>
      <td height="78" colspan="3">
       <textarea rows="3" name="meg" cols="72"></textarea></p>
      </td>
    </tr>
    <tr>
      <td height="40" colspan="4">
        <p align="center">
        <input type="submit" name="show" value="发布" onClick="return check()">&nbsp;&nbsp;
        <input type="submit" name="reset" value="重置">&nbsp;&nbsp;<a href="${rc.contextPath}/carMsgList">返回</a>
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
















<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="logistics/CSS/style.css">
<title>
Enterprise_show  page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.numbers.value=="")
{
alert("请填写车牌号码！！");
form1.numbers.focus();
return false;
}
if(form1.type.value=="")
{
alert("请填写车辆类型！！！");
form1.type.focus();
return false;
}
if(form1.carname.value=="")
{
alert("请填写车辆品牌！！！");
form1.carname.focus();
return false;
}
if(form1.loads.value=="")
{
alert("请填写车辆限重！！！");
form1.loads.focus();
return false;
}
if(form1.usetime.value=="")
{
alert("请填写使用年限！！！");
form1.usetime.focus();
return false;
}
if(form1.style.value=="")
{
alert("请填写运输类型！！！");
form1.style.focus();
return false;
}
if(form1.name.value=="")
{
alert("请填写驾驶员姓名！！！");
form1.name.focus();
return false;
}
if(form1.number.value=="")
{
alert("请填写驾驶证号码！！！");
form1.number.focus();
return false;
}
if(form1.styles.value=="")
{
alert("请填写驾驶证类型！！！");
form1.styles.focus();
return false;
}
if(form1.time.value=="")
{
alert("请填写驾驶员驾龄！！！");
form1.time.focus();
return false;
}
if(form1.linkman.value=="")
{alert("请填写联系人！！！");
form1.linkman.focus();
return false;
}
if(form1.phone.value=="")
{
alert("请填写联系电话！！！");
form1.phone.focus();
return false;
}
if(form1.meg.value=="")
{
alert("请填写备注！！！");
form1.meg.focus();
return false;
}
}
</Script>
<jsp:include page="/top.jsp"/>
<body bgcolor="#ffffff">

</body>
</html>
