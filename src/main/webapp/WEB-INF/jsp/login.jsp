<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/login/login.html" method="post">
		<input type="hidden" name="reURL" value="${reURL}">
		<label>账户</label> <input type="text" name="username"> 
		<br/> 
		<label>密码</label>
		<input type="password" name="password">
		<br/>  <input
			type="submit" value="login">
	</form>
</body>
</html>