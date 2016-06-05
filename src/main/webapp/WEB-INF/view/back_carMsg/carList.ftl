<#assign c=JspTaglibs["http://java.sun.com/jstl/core_rt"]>
<#assign fmt=JspTaglibs["http://java.sun.com/jsp/jstl/fmt"]>
<#assign fn=JspTaglibs["http://java.sun.com/jsp/jstl/functions"]>
<HTML>
<HEAD>
<TITLE>车辆信息列表</TITLE>
  <META http-equiv=Content-Type content="text/html; charset=UTF-8">
  <META content="MSHTML 6.00.2900.5880" name=GENERATOR>
  
  
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,800,700,600' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="<@c.url value='/js/jquery-1.11.2.min.js'/>" ></script>

<script type="text/javascript" src="<@c.url value='/js/zhiqu.js'/>" ></script>




  <link href="<@c.url value='back_css/admin.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='back_css/style_index.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='back_css/style1.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='back_css/iconfont.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='back_css/dpl-min.css" rel="stylesheet" type="text/css'/>" />
  <link href="<@c.url value='back_css/bui-min.css" rel="stylesheet" type="text/css'/>" />
  
  <link href="<@c.url value='back_css/H-ui.min.css" rel="stylesheet" type="text/css'/>" />

  <script type="text/javascript" src="<@c.url value='/back_js/jquery-2.1.0.min.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='/back_js/easyform.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='/back_js/bootstrap-modalmanager.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='/back_js/bootstrap-modal.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='/back_js/jquery-1.8.1.min.js'/>" ></script>
  <script type="text/javascript" src="<@c.url value='/back_js/bui-min.js'/>" ></script>
  
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
    <table id="table">
    <thead>
      <tr>
      <th class="th_bg" style="width:350px;" >车牌号码</th>
      <th class="th_bg" >类型</th>
      <th class="th_bg" >车辆限量</th>
      <th class="th_bg" >已使用</th>
      <th class="th_bg" >驾驶员驾龄</th>
      <th class="th_bg" >运输类型</th>
      <th class="th_bg" style="width:200px;">操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作</th>
      </tr>
    </thead>
    <tbody>
    <#if carMsgList??>
<#list carMsgList as carMsg>
	<tr>
<td width="11%" height="29" align="center">${carMsg.licencenumber}</td>
<td width="11%" height="29" align="center">${carMsg.style}</td>
<td width="11%" height="29" align="center">${carMsg.carload}吨</td>
<td width="11%" height="29" align="center">${carMsg.drivertime}年</td>
<td width="15%" height="29" align="center">${carMsg.usertime}年</td>
<td width="11%" height="29" align="center">${carMsg.transpotstyle}</td>
<td width="12%" height="29" align="center"><a href="${rc.contextPath}/carBackDetail/${carMsg.id}">详细</a></td>
</tr>
</#list>
</#if>
    </tbody>
    
    </table>
    <div id="fbMappingPageBar"></div>
    <div class="row m-t-25">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="row" id="fbMappingListData"></div>
   
    </div>
</div>
</div>

</body>
<!-- script block -->
<script type="text/javascript">


   var fbMappingPagination = new zhiqu.Pagination({
    templateKey : "searchPictures.listData"});
/* 跳转到第一页 */
fbMappingPagination.setSort({ctime:"DESC"}).first();


</script>
<script type="text/javascript">
	fbMappingPagination.bar("#fbMappingPageBar",${pagination.total?c}, ${pagination.pageCount?c}, ${pagination.currentPage?c});
</script>
</html>