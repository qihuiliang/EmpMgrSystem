<!-- pageEncoding是jsp文件本身的编码格式，因为容器把jsp文件转化成java文件前，必须要知道jsp文件的编码格式 -->
<!-- contentType是服务端相应客户端的编码格式 -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>login.jsp</title>
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

	<div class="msg">
		<table>
			<tr>
				<td>会话的状态:</td>
				<td><%=session.isNew() ? "新的会话" : "旧的会话"%></td>
			</tr>
			<tr>
				<td>会话id：</td>
				<td><%=session.getId()%></td>
			</tr>
			<tr>
				<td>创建时间：</td>
				<td><%=new Date(session.getCreationTime())%></td>
			</tr>
			<tr>
				<td>上次访问时间：</td>
				<td><%=new Date(session.getLastAccessedTime())%></td>
			</tr>
			<tr>
				<td>最大不活动时间间隔（s）：</td>
				<td><%=session.getMaxInactiveInterval()%></td>
			</tr>
		</table>

	</div>

	<div class="container">
		<!-- servlet对应的url -->
		<form action="<%=request.getContextPath()%>/servlet/login"
			method="post">
			<input type="text" name="username" placeholder="请输入用户名"
				value="<%=session.getAttribute("username") == null ? "" : session.getAttribute(
                "username").toString()%>" /><br />
			<input type="password" name="password" placeholder="请输入密码" /><br />
			<input type="checkbox" name="autoLogin" />下次自动登录<br /> <input
				type="submit" value="登录" /><span>&nbsp;&nbsp;</span> <input
				type="reset" value="重置" />
		</form>
	</div>
</body>
</html>