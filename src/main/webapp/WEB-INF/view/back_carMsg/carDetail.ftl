<#assign c=JspTaglibs["http://java.sun.com/jstl/core_rt"]>
<#assign fmt=JspTaglibs["http://java.sun.com/jsp/jstl/fmt"]>
<#assign fn=JspTaglibs["http://java.sun.com/jsp/jstl/functions"]>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../CSS/style.css">
<title> 车辆详情</title>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
  <META content="MSHTML 6.00.2900.5880" name=GENERATOR>
  
  
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,800,700,600' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
  <link href="<@c.url value='../back_css/admin.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='../back_css/style_index.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='../back_css/style1.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='../back_css/iconfont.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='../back_css/dpl-min.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='../back_css/bui-min.css" rel="stylesheet" type="text/css'/>" />
  
  <link href="<@c.url value='../back_css/H-ui.min.css" rel="stylesheet" type="text/css'/>" />

  <script type="text/javascript" src="<@c.url value='../back_js/jquery-2.1.0.min.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='../back_js/easyform.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='../back_js/bootstrap-modalmanager.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='../back_js/bootstrap-modal.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='../back_js/jquery-1.8.1.min.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='../back_js/bui-min.js'/>" ></script>
  
  <script type="text/javascript">
    BUI.use('bui/form',function (Form) {
      var form = new Form.HForm({
        srcNode : '#J_Form'
      });
    form.render();
    });
  </script>
<SCRIPT language=javascript>
  function expand(el)
  {
    childObj = document.getElementById("child" + el);

    if (childObj.style.display == 'none')
    {
      childObj.style.display = 'block';
    }
    else
    {
      childObj.style.display = 'none';
    }
    return;
  }
</SCRIPT>
</HEAD>

<body>
<!--头-->
    <#include "/backInclude/top.ftl"/>


<!--左栏-->

  <#include "/backInclude/left.ftl"/>
<!--内容-->

<div class="contant_weizhi2">
  <div class="zzsc-container">
  <div id="page">
    <table width="796" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="0" colspan="4">
      </td>
  </tr>

  <tr>
    <td width="18%" height="34" align="center"><font size="4">车牌号</font></td>
    <td width="32%" height="34" align="center">${carMessage.trademark}</td>
    <td width="19%" height="34" align="center"><font size="4">车品名</font></td>
    <td width="31%" height="34" align="center">${carMessage.style}</td>
  </tr>
  <tr>
    <td width="18%" height="36" align="center"><font size="4">车辆类型</font></td>
    <td width="32%" height="36" align="center">${carMessage.style}</td>
    <td width="19%" height="36" align="center"><font size="4">车辆载重</font></td>
    <td width="31%" height="36" align="center">${carMessage.carload}吨</td>
  </tr>
  <tr>
    <td width="18%" height="37" align="center"><font size="4">使用时间</font></td>
    <td width="32%" height="37" align="center">${carMessage.usertime}年</td>
       <td width="18%" height="37" align="center"><font size="4">驾驶员姓名</font></td>
    <td width="32%" height="37" align="center">${carMessage.drivename}</td>
  </tr>
  <tr>
    <td width="19%" height="37" align="center"><font size="4">驾驶时间</font></td>  
    <td width="31%" height="37" align="center">${carMessage.drivertime}</td>
    <td width="18%" height="36" align="center"><font size="4">驾照号码</font></td>
    <td width="32%" height="36" align="center">${carMessage.licencenumber}</td>
  </tr>
  <tr>
    <td width="19%" height="36" align="center"><font size="4">驾照类型</font></td>
    <td width="31%" height="36" align="center">${carMessage.licencestyle}</td>
   <td width="19%" height="37" align="center"><font size="4">运输类型</font></td>
     <td width="31%" height="37" align="center">${carMessage.transpotstyle}</td>
</tr>
  <tr>
    <td width="18%" height="42" align="center"><font size="4">联系人</font></td>
    <td width="32%" height="42" align="center">${carMessage.linkman}</td>
    <td width="19%" height="42" align="center"><font size="4">联系电话</font></td>
    <td width="31%" height="42" align="center">${carMessage.linkphone}</td>
  </tr>
  <tr>
    <td width="18%" height="65" align="center"><font size="4">备注</font></td>
    <td width="82%" height="65" colspan="3">${carMessage.rmark}
    </td>
  </tr>
  <tr>
    <td width="18%" height="42" align="center">发布时间</td>
    <td width="32%" height="42">
      <p align="center">${carMessage.issuedate}</td>
    <td width="19%" height="42" align="center">发布人</td>
  
    <td width="31%" height="42" align="center">${carMessage.adduser}</td>
  </tr>

 <tr>
      <td width="100%" height="33" colspan="4" align="center">
        <a href="/logistics/Cars/CarMessage_change.jsp?id=">修改</a>&nbsp;&nbsp;
        <a href="/logistics/Cars/CarMessage_delete.jsp?id=">删除</a>
    </td>
  </tr>

</table>
    <div id="fbMappingPageBar"></div>
    <div class="row m-t-25">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="row" id="fbMappingListData"></div>
   
    </div>
</div>
</div>

</body>
</html>
