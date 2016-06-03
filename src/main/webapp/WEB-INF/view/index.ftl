<#assign c=JspTaglibs["http://java.sun.com/jstl/core_rt"]>
<#assign fmt=JspTaglibs["http://java.sun.com/jsp/jstl/fmt"]>
<#assign fn=JspTaglibs["http://java.sun.com/jsp/jstl/functions"]>
<html>
<head>
<title>平台首页</title>
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
<link href="css/picture.css" rel="stylesheet" type="text/css" />
<style type="text/css">
a { color:#213f71; font-size:13pt; text-decoration:none; }
a:hover { color:#0066cc; }
.blk_18 { overflow:hidden; zoom:1; font-size:26pt;   width:860px; margin-top:8px; drop-initial-value: }
.blk_18 .pcont { width:760px; float:left; overflow:hidden; padding-left:5px; }
.blk_18 .ScrCont { width:32766px; zoom:1; margin-left:-5px; }
.blk_18 #List1_1, .blk_18 #List2_1 { float:left; }
.blk_18 .LeftBotton, .blk_18 .RightBotton { width:15px; height:74px; float:left; }
.blk_18 .LeftBotton { background-position: 0 0; margin:8px 5px 0; }
.blk_18 .RightBotton { background-position: 0 -100px; margin:8px 1px 10px 0px; }
.blk_18 .LeftBotton:hover { background-position: -20px 0; }
.blk_18 .RightBotton:hover { background-position: -20px -100px; }
.blk_18 .pl img { display:block; cursor:pointer; border:none; margin:15px 0px 1px 1px; }
.blk_18 .pl { width:105px; border:1px solid #f3f3f3; float:left; float:left; text-align:center; line-height:40px; }
.blk_18 a.pl:hover { border:1px solid #5dacec; color:#5dacec; background:#fff; }
</style>
<script type="text/javascript">

var Speed_1 = 10; //速度(毫秒)
var Space_1 = 10; //每次移动(px)
var PageWidth_1 = 107 * 5; //翻页宽度
var interval_1 = 5000; //翻页间隔时间
var fill_1 = 0; //整体移位
var MoveLock_1 = false;
var MoveTimeObj_1;
var MoveWay_1="right";
var Comp_1 = 0;
var AutoPlayObj_1=null;
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay_1(){clearInterval(AutoPlayObj_1);AutoPlayObj_1=setInterval('ISL_GoDown_1();ISL_StopDown_1();',interval_1)}
function ISL_GoUp_1(){if(MoveLock_1)return;clearInterval(AutoPlayObj_1);MoveLock_1=true;MoveWay_1="left";MoveTimeObj_1=setInterval('ISL_ScrUp_1();',Speed_1);}
function ISL_StopUp_1(){if(MoveWay_1 == "right"){return};clearInterval(MoveTimeObj_1);if((GetObj('ISL_Cont_1').scrollLeft-fill_1)%PageWidth_1!=0){Comp_1=fill_1-(GetObj('ISL_Cont_1').scrollLeft%PageWidth_1);CompScr_1()}else{MoveLock_1=false}
AutoPlay_1()}
function ISL_ScrUp_1(){if(GetObj('ISL_Cont_1').scrollLeft<=0){GetObj('ISL_Cont_1').scrollLeft=GetObj('ISL_Cont_1').scrollLeft+GetObj('List1_1').offsetWidth}
GetObj('ISL_Cont_1').scrollLeft-=Space_1}
function ISL_GoDown_1(){clearInterval(MoveTimeObj_1);if(MoveLock_1)return;clearInterval(AutoPlayObj_1);MoveLock_1=true;MoveWay_1="right";ISL_ScrDown_1();MoveTimeObj_1=setInterval('ISL_ScrDown_1()',Speed_1)}
function ISL_StopDown_1(){if(MoveWay_1 == "left"){return};clearInterval(MoveTimeObj_1);if(GetObj('ISL_Cont_1').scrollLeft%PageWidth_1-(fill_1>=0?fill_1:fill_1+1)!=0){Comp_1=PageWidth_1-GetObj('ISL_Cont_1').scrollLeft%PageWidth_1+fill_1;CompScr_1()}else{MoveLock_1=false}
AutoPlay_1()}
function ISL_ScrDown_1(){if(GetObj('ISL_Cont_1').scrollLeft>=GetObj('List1_1').scrollWidth){GetObj('ISL_Cont_1').scrollLeft=GetObj('ISL_Cont_1').scrollLeft-GetObj('List1_1').scrollWidth}
GetObj('ISL_Cont_1').scrollLeft+=Space_1}
function CompScr_1(){if(Comp_1==0){MoveLock_1=false;return}
var num,TempSpeed=Speed_1,TempSpace=Space_1;if(Math.abs(Comp_1)<PageWidth_1/2){TempSpace=Math.round(Math.abs(Comp_1/Space_1));if(TempSpace<1){TempSpace=1}}
if(Comp_1<0){if(Comp_1<-TempSpace){Comp_1+=TempSpace;num=TempSpace}else{num=-Comp_1;Comp_1=0}
GetObj('ISL_Cont_1').scrollLeft-=num;setTimeout('CompScr_1()',TempSpeed)}else{if(Comp_1>TempSpace){Comp_1-=TempSpace;num=TempSpace}else{num=Comp_1;Comp_1=0}
GetObj('ISL_Cont_1').scrollLeft+=num;setTimeout('CompScr_1()',TempSpeed)}}
function picrun_ini(){
GetObj("List2_1").innerHTML=GetObj("List1_1").innerHTML;
GetObj('ISL_Cont_1').scrollLeft=fill_1>=0?fill_1:GetObj('List1_1').scrollWidth-Math.abs(fill_1);
GetObj("ISL_Cont_1").onmouseover=function(){clearInterval(AutoPlayObj_1)}
GetObj("ISL_Cont_1").onmouseout=function(){AutoPlay_1()}
AutoPlay_1();
}
</script>
</head>
<body>
	<!-- banner -->
	<div class="banner">
    
	  <div class="banner-content">
        
			<div class="logo">
				<a href="index.html">杨凌物流联盟信息平台</a>
			</div>
			<div class="top-nav">
				<#include "include/header.ftl" />
			
				<!-- script-for-menu -->
					<script>
						
					</script>
				<!-- /script-for-menu -->
			</div>
			<div class="banner-slid">
				<script src="js/responsiveslides.min.js"></script>
					<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider3").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					</script>
					<div  id="top" class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li>
								<div class="banner-info">
								  <h5>我们的宗旨</h5>
									<p>诚信联动，整合资源、提升服务！</p>
									<p>彰显品牌、安全快捷、拓展市场！</p>
								</div>
							</li>
							<li><div class="banner-info2">
								  <h5>我们的愿景</h5>
									<p>让物流改变世界！</p>
								</div></li>
                                </li>
							<li><div class="banner-info3">
								  <h5>我们的使命</h5>
								<p>物畅其流，人尽其才！</p>
								</div></li>
						</ul>
					</div>
			</div>
			<div class="header-address">
            
				<ul>
					<li>中国·杨凌 西农路22号</li>
					<li class="phone-img">邮编：712100</li>
					<li><a href="mailto:example@email.com">E-mail : zhangxy3@kxtx.com</a>    </li>
				</ul>
		  </div>
           <!-- <table width="100%" height="10"  align="center" border="0" cellpadding="0" cellspacing="0">
         <tr>
          <td height="10">
          </td>
          </tr>
         
            <td height="10" align="center"><font color="#FFFFFF">用户名:</font>
              <input name="name" type="text" size="16" maxlength="20"><font color="#FFFFFF">&nbsp;密&nbsp;&nbsp;&nbsp;码 :</font>
              <input type="password" name="password" size="16" maxlength="20">
              <input  type="submit" value="登录" name="login" onClick="return check1()"> 
          <a href="#" > <input type="submit"  value="注册" ></a><a href="#" style="color:#FFF">&nbsp;&nbsp;&nbsp;忘记密码</a></td> 
          </tr>
        </table> -->
		</div>
	</div>
           <div class="welcome">
		<div class="welcome-left offer-left">
			 <h3>品牌物流</h3>
		
<center>
<!-- picrotate_left start  -->
<div class="blk_18"> <a class="LeftBotton" onmousedown="ISL_GoUp_1()" onmouseup="ISL_StopUp_1()" onmouseout="ISL_StopUp_1()" href="javascript:void(0);" target="_self";> </a>
  <div class="pcont" id="ISL_Cont_1">
    <div class="ScrCont">
      <div id="List1_1">
        <!-- piclist begin -->
        <a class="pl" href="#" ><img src="images/lunbo/1.jpg" width="100" height="30"/>赢威物流</a> 
        <a class="pl"href="#"> <img src="images/lunbo/2.jpg" width="100" height="30"/>卡行天下</a> 
        <a class="pl" href="#"><img src="images/lunbo/3.jpg" width="100" height="30"/>圣安物流</a> 
        <a class="pl" href="#"><img src="images/lunbo/4.jpg" width="100" height="30"/>天地华宇</a> 
        <a class="pl" href="#"><img src="images/lunbo/5.jpg" width="100" height="30"/>铭龙物流</a> 
        <a class="pl" href="#"><img src="images/lunbo/6.jpg" width="100" height="30"/>新邦物流</a> 
        <a class="pl" href="#"><img src="images/lunbo/7.jpg" width="100" height="30"/>城市之星</a> 
        <a class="pl" href="#" ><img src="images/lunbo/8.jpg" width="100" height="30"/>天天快递</a> 
        <a class="pl" href="#" ><img src="images/lunbo/9.jpg" width="100" height="30"/>景光物流</a>
         <a class="pl" href="#"><img src="images/lunbo/11.jpg"width="100" height="30"/>昊昕物流</a> 
        <a class="pl" href="#" ><img src="images/lunbo/12.jpg"width="100" height="30"/>日昱物流</a> 
        <a class="pl" href="#" ><img src="images/lunbo/13.jpg"width="100" height="30"/>骐胜物流</a>
        <!-- piclist end -->
      </div>
      <div id="List2_1"></div>
          <div class="clearfix"> </div>
    </div>
  </div>
  
  <a class="RightBotton" onmousedown="ISL_GoDown_1()" onmouseup="ISL_StopDown_1()" onmouseout="ISL_StopDown_1()" href="javascript:void(0);" target="_self"></a> </div>
  </div></div>
<div class="c"></div>

<script type="text/javascript">
        <!--
        picrun_ini()
        //-->
        </script>
<!-- picrotate_left end -->
</div></div>
   <div class="clearfix"> </div>
	</div>
   <div class="clearfix"> </div> 
    
            
	<!-- //banner -->
	<div class="welcome">
	  <div class="welcome-left offer-left">
			<h3 style="display:inline">货物信息</h3>
            <a href="#"><span  class="label label-info1" >我要发货</span></a> </div>
            <div class="welcome-left offer-left">
          <div class="offer-left-list">
				<ul>
					<li><a href="#">复印机--陕西·杨凌区→
上海市·长宁区</a></li>
					<li><a href="#">饲料--陕西·丹凤县→
宁夏·银川市</a></li>
					<li><a href="#">可口可乐--陕西·西安市→
陕西·宝鸡市</a></li>
					<li><a href="#">复印机--陕西·杨凌区→
上海市·长宁区</a></li>
					<li><a href="#">化妆品--陕西·咸阳市→
湖北·武汉市</a></li>
				</ul>
			</div>
			<div class="offer-left-list">
				<ul>
					<li><a href="#">可口可乐--陕西·西安市→
陕西·宝鸡市</a></li>
					<li><a href="#">复印机--陕西·杨凌区→
上海市·长宁区</a></li>
					<li><a href="#">化妆品--陕西·咸阳市→
湖北·武汉市</a></li>
					<li><a href="#">饲料--陕西·丹凤县→
宁夏·银川市</a></li>
					<li><a href="#">更多信息...</a></li>
				</ul>
			</div>
		
		</div>
		<!--<div class="welcome-right">
			
		</div>-->
		<div class="clearfix"> </div>
	</div>

	<!-- offer -->
	<div class="welcome offer">
		<div class="welcome-left offer-left">
			<h3>车辆信息</h3>
			
			<div class="offer-left-list">
				<ul>
					<li><a href="#">陕V21547*--解放--半挂--56吨--长途</a></li>
					<li><a href="#">陕V21547*-东风--厢式货车--4吨--短途</a></li>
					<li><a href="#">陕V21547*--解放--半挂--56吨--长途</a></li>
					<li><a href="#">陕V21547*-东风--厢式货车--4吨--短途</a></li>
					<li><a href="#">陕V21547*--解放--半挂--56吨--长途</a></li>
				</ul>
			</div>
			<div class="offer-left-list">
				<ul>
					<li><a href="#">陕V21547*--解放--半挂--56吨--长途</a></li>
					<li><a href="#">陕V21547*-东风--厢式货车--4吨--短途</a></li>
					<li><a href="#">陕V21547*--解放--半挂--56吨--长途</a></li>
					<li><a href="#">陕V21547*-东风--厢式货车--4吨--短途</a></li>
					<li><a href="#">更多信息...</a></li>
				</ul>
			</div>
		
		</div>
		<!--<div class="welcome-right offer-right">
			
		</div>-->
		<div class="clearfix"> </div>
	</div>
   
   
	<!-- //offer -->
	<!-- new -->
	<div class="welcome new">
	  <div class="welcome-left offer-left">
		  <h3>线路信息</h3>
			
			<div class="offer-left-list">
				<ul>
	 				<li><a href="#">杨凌→
西安     半挂    杨凌大陆桥物流有限公司</a></li>
					<li><a href="#">杨凌→
宝鸡     小货车    陕西宅配通配送有限公司</a></li>
					<li><a href="#">菜鸟供应链管理有限公司</a></li>
					<li><a href="#">嘉兴天宇物流公司</a></li>
					<li><a href="#">慧捷供应链管理有限公司</a></li>
				</ul>
			</div>
			<div class="offer-left-list">
				<ul>
					<li><a href="#">天地万达物流有限公司</a></li>
					<li><a href="#">派斯德物流有限公司</a></li>
					<li><a href="#">奥利物流有限公司</a></li>
					<li><a href="#">襄阳集远物流有限公司</a></li>
					<li><a href="#">更多信息...</a></li>
				</ul>
			</div>
		
			
		</div>
		<!--<div class="welcome-right new-right">-->
			
		</div>
		
<div class="clearfix"> </div>
	</div>

    
    <!-- projects-->
	<div class="projects">
		<div align="left">
		  <!-- container --> 	  
	  </div>
      
		<tr><td height="20" colspan="3"><div align="center">杨凌物流联盟信息平台&nbsp; 邮政编码：712100&nbsp; TEL:15209276237</div></td>
	  </tr>
   <tr align="center" valign="middle">
     <td height="23" colspan="3"><div align="center">Copyright 2016 西农信息工程学院</div></td>
     </tr><!-- //container -->
     <tr align="center" valign="middle">
    <td height="23" colspan="3"><div align="center">后台：&nbsp; <a href="mlogin.html">系统管理</a></div></td>
  </tr>
	</div>
	<!-- //projects-->
	<!-- testimonial -->
	<div class="testimonial">
		<!-- container -->
		<div class="container">
			<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider2").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					</script>
				
		</div>
		<!-- //container -->
	</div>
	<!-- //testimonial -->
	<!-- footer -->
	
	<!-- //footer -->
</body>	
</html>