<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="back_css/style_index.css">
	<title>main</title>
</head>
<body>
<div>
	
    	<div class="adminer" ><img width=100 height=100 src="back_images/adminer.jpg" ></div>
        <div class="teacher" ><#if Session.user?exists>
    		${Session.user.getName()} &nbsp;
    	</#if> <br><br>欢迎进入后台管理系统!</div>
</div>

</body>
</html>