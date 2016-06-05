<#assign c=JspTaglibs["http://java.sun.com/jstl/core_rt"]>
<#assign fmt=JspTaglibs["http://java.sun.com/jsp/jstl/fmt"]>
<#assign fn=JspTaglibs["http://java.sun.com/jsp/jstl/functions"]>
<HTML>
<HEAD>
<TITLE>公告信息列表</TITLE>
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
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 background=back_images/menu_bg.jpg border=0>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><TR><TD height=10></TD></TR></TABLE>  
        <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
          <TR height=22>
            <TD style="PADDING-LEFT: 30px" background=back_images/menu_bt.jpg>
              <A class=menuParent onclick=expand(1) href="javascript:void(0);">个人用户管理</A></TD>
		        </TR>
            <TR height=4>
              <TD></TD>
            </TR>
	      </TABLE>
        <TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
          <TR height=20>
            <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9>
            </TD>
            <TD><A class=menuChild href="#" target="MainFrame">修改登陆密码</A>
            </TD>
          </TR>
          <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9>
          </TD>
          <TD>
            <A class=menuChild href="#" target="MainFrame">查看用户资料</A>
          </TD>
        </TR> 
          <TR height=4>
            <TD colSpan=2></TD>
		      </TR>
	      </TABLE>
        <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
          <TR height=22>
            <TD style="PADDING-LEFT: 30px" background=back_images/menu_bt.jpg>
              <A class=menuParent onclick=expand(2) href="javascript:void(0);">后台用户管理</A></TD>
            </TR>
            <TR height=4>
              <TD></TD>
            </TR>
        </TABLE>
        <TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
          <TR height=20>
            <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9>
            </TD>
            <TD><A class=menuChild href="#" target="MainFrame">管理后台用户</A>
            </TD>
          </TR>
          <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9>
          </TD>
          <TD>
            <A class=menuChild href="#" target="MainFrame">增加管理员</A>
          </TD>
        </TR> 
          <TR height=4>
            <TD colSpan=2></TD>
          </TR>
        </TABLE>
	      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
            <TR height=22>
              <TD style="PADDING-LEFT: 30px" background=back_images/menu_bt.jpg>
                <A class=menuParent onclick=expand(4) href="javascript:void(0);">物流知识管理</A>
              </TD>
		        </TR>
            <TR height=4>
              <TD></TD>
            </TR>
	      </TABLE>
        <TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9></TD>
          <TD>
            <A class=menuChild href="${rc.contextPath}/knowledgeBackList" target="MainFrame">管理物流知识</A>
          </TD>
		    </TR> 
		    <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9>
          </TD>
          <TD>
            <A class=menuChild href="${rc.contextPath}/knowledgeLoadAdd" target="MainFrame">发布物流知识</A>
          </TD>
		    </TR> 
        <TR height=4>
          <TD colSpan=2></TD>
		    </TR>
	    </TABLE> 
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
            <TR height=22>
              <TD style="PADDING-LEFT: 30px" background=back_images/menu_bt.jpg>
                <A class=menuParent onclick=expand(5) href="javascript:void(0);">车辆信息管理</A>
              </TD>
            </TR>
            <TR height=4>
              <TD></TD>
            </TR>
        </TABLE>
        <TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9></TD>
          <TD>
            <A class=menuChild href="${rc.contextPath}/carBackList" target="MainFrame">查看车辆信息</A>
          </TD>
        </TR> 
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9>
          </TD>
          <TD>
            <A class=menuChild href="${rc.contextPath}/carLoadAdd" target="MainFrame">发布车辆信息</A>
          </TD>
        </TR> 
        <TR height=4>
          <TD colSpan=2></TD>
        </TR>
      </TABLE> 
	    <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=back_images/menu_bt.jpg>
            <A class=menuParent onclick=expand(6) href="javascript:void(0);">货物信息管理</A>
          </TD>
		    </TR>
        <TR height=4><TD></TD></TR>
	    </TABLE>
      <TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="${rc.contextPath}/goodsBackList" target="MainFrame">查看货物信息</A></TD>
		    </TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="${rc.contextPath}/goodsBackLoadAdd" target="MainFrame">发布货物信息</A></TD>
        </TR> 
        <TR height=4>
          <TD colSpan=2></TD>
		    </TR>
	    </TABLE>
	    <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=back_images/menu_bt.jpg>
          <A class=menuParent onclick=expand(7) href="javascript:void(0);">企业信息管理</A></TD>
		    </TR>
        <TR height=4><TD></TD></TR>
	    </TABLE>
      <TABLE id=child7 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="${rc.contextPath}/enterpriseBackList" target="MainFrame">查看企业信息</A></TD>
		    </TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="back_images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="${rc.contextPath}/enterpriseBackLoadAdd" target="MainFrame">发布企业信息</A></TD></TR> 
        <TR height=4>
          <TD colSpan=2></TD>
		    </TR>
	    </TABLE> 

    </TD>
  </TR> 
  </TABLE>
</body>
</html>
