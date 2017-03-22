<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>用户信息</title>
</head>

<body>
	<table>
		<tr>
			<td>用户编号</td>
			<td>${user.id}</td>
		</tr>
		<tr>
			<td>用户名称</td>
			<td>${user.username}</td>
		</tr>
		<tr>
			<td>用户生日</td>
			<td>${user.birthday}</td>
		</tr>
		<tr>
			<td>用户性别</td>
			<td>${user.sex}</td>
		</tr>
		<tr>
			<td>用户地址</td>
			<td>${user.address}</td>
		</tr>
	</table>
</body>

</html>