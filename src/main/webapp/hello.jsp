<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login2</title>
<style type="text/css">
.container {
	text-align: center;
	position: relative;
	top: 100px;
}
</style>

<script type="text/javascript" src="./scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(function() {
	})
</script>
</head>
<body>
	<div class ="msg">
	<table>
	<tr><td>会话的状态：<%=session.isNew()?"新的会话":"旧的会话" %></td></tr>	
	<tr><td>会话Id:<%=session.getId() %></td></tr>
	<tr><td>最大不活动时间间隔（s）:<%=session.getMaxInactiveInterval() %></td></tr>
	<tr><td>欢迎你，iscast</td></tr>
	</table>
	</div>
	<a href="../login">重新登录</a>
	</div>
</body>
</html>