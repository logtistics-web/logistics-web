<span class="menu">MENU</span>
				<ul class="nav1 cl-effect-15">
					<li><a href="${rc.contextPath}/index" data-hover="网站首页">网站首页</a></li>
					<li><a href="${rc.contextPath}/goodsMsgList" data-hover="货物信息">货物信息</a></li>
					<li><a href="${rc.contextPath}/carMsgList" data-hover="车辆信息">车辆信息</a></li>
					<li><a href="${rc.contextPath}/enterpriseMsgList" data-hover="企业信息">企业信息</a></li>
					<li><a href="${rc.contextPath}/knowledgeMsgList" data-hover="物流知识">物流知识</a></li>
					<#if Session.user?exists>
					<li><a href="${rc.contextPath}/loadMinePage" data-hover="个人中心">个人中心</a></li>
					<#else>
					<li><a href="${rc.contextPath}/login" data-hover="登录">登录</a></li>
					<li><a href="${rc.contextPath}/loadRegist" data-hover="注册">注册</a></li>
					</#if>
					<#if Session.user?exists>
						<div>
						<a class="dropdown-toggle" href="#", data-toggle="dropdown">欢迎，${Session.user.getName()}</a>
						<a class="dropdown-toggle" href='${rc.contextPath}/logout', data-toggle="dropdown">注销</a>
						
						</div>
					</#if>
				</ul>