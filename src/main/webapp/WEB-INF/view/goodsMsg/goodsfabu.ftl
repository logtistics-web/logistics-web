<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>货物信息发布</title>
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
				<a>货物消息发布</a>
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


<body bgcolor="#ffffff">

<form method="POST" action="/logistics/Goods/Good_config.jsp" name="form1">
  <table width="806" border="0" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="134">
      <p align="center">货物类型：</p>      </td>
      <td width="262" >
        <p align="center" ><div class="fabu1"><input type="text" name="gclass" size="20"></p></div>
      </td>
      <td width="123" >
        <p align="center">货物名称：</p>
      </td>
      <td width="277" >
        <p align="center"><div class="fabu1"><input type="text" name="gname" size="20"></p>
      </td>
    </tr>
    <tr>
      <td>
      <p align="center">货物数量：</p>      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="gcount" size="10"></p>
      </td>
      <td>
        <p align="center">数量单位：</p>
      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="gunit" size="20"></p>
      </td>
    </tr>
    <tr>
      <td >
      <p align="center">起始省份：</p>      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="gstartfirm" size="20"></p>
      </td>
      <td >
        <p align="center">起始城市：</p>
      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="gstartcity" size="20"></p>
      </td>
    </tr>
    <tr>
      <td>
      <p align="center">抵达省份：</p>      </td>
      <td >
        <p align="center"><div class="fabu1"><input type="text" name="gendfirm" size="20"></p>
      </td>
      <td>
        <p align="center">抵达城市：</p>
      </td>
      <td>
        <p align="center"><div class="fabu1"><input type="text" name="gendcity" size="20"></p>
      </td>
    </tr>
    <tr>
      <td>
      <p align="center">运输类型：</p>      </td>
      <td >

      <p align="center">

      &nbsp; <select size="1" name="gtransstyle">
        <option value="快速"selected>快速</option>
        <option value="特快">特快</option>
        <option value="加急">加急</option>
      </select>
     </p>
     </td>
      <td>
         <p align="center">联系电话：</p> 
      </td>
      <td>
       <p align="center"><div class="fabu1"><input type="text" name="gphone" size="20"></p>
      </td>
    </tr>
    <tr>
      <td>
         <p align="center">联系人：</p> </td>
      <td>
        <p align="center"><div class="fabu1"><input type="text" name="glink" size="20"></p>
      </td>
      <td>
    
      </td>
      <td>
        
      </td>
    </tr>
    <tr>
      <td>
      <p align="center">备注：</p>      </td>
      <td colspan="3">
        <p align="left"><div class="fabu1"><textarea rows="5" name="gremark" cols="72"></textarea></p>
      </td>
    </tr>
     <tr>
      <td height="58" colspan="4">
        <p align="center">
        <input type="submit" name="show" value="发布" onClick="return check()">
        <input type="reset" name="reset" value="重置"> &nbsp;&nbsp;<a href="about.html">返回</a>
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










