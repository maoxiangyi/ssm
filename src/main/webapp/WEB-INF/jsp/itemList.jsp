<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询商品列表</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
</head>
<body>
	<form action="${pageContext.request.contextPath }/item/queryItem.html"
		method="post">
		查询条件：
		<table width="100%" border=1>
			<tr>
				<td>商品id:<input type="text" name="items.id" /></td>
				<td>商品名称:<input type="text" name="items.name" /></td>
				<td><input type="submit" value="查询" /></td>
			</tr>
		</table>
	</form>

	<form
		action="${pageContext.request.contextPath }/item/batchUpdate.html"
		method="post">
		商品列表：
		<table width="100%" border=1>
			<tr>
				<td>选择</td>
				<td>商品名称</td>
				<td>商品价格</td>
				<td>生产日期</td>
				<td>商品描述</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${itemList}" var="item" varStatus="s">
				<tr>
					<td><input type="checkbox" name="ids" value="${item.id}">
						<input type="hidden" name="itemList[${s.index}].id"
						value="${item.id}"></td>
					<td><input type="text" name="itemList[${s.index}].name"
						value="${item.name}"></td>
					<td><input type="text" name="itemList[${s.index}].price"
						value="${item.price}"></td>

					<td><input type="text" name="itemList[${s.index}].createtime"
						value="<fmt:formatDate value="${item.createtime}"
							pattern="yyyy-MM-dd HH:mm:ss" />"></td>
					<td><input type="text" name="itemList[${s.index}].detail"
						value="${item.detail}"></td>
					<td><a
						href="${pageContext.request.contextPath }/item/itemEdit.html?id=${item.id}">修改</a></td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="更新" />
	</form>
	<button onclick="sendJson2server()">测试json数据交互</button>
	<script type="text/javascript">
		function sendJson2server() {
			alert("start....");
			$.ajax({
				type : "post",
				url : '${pageContext.request.contextPath }/item/testJson.html',
				data : '{"id":1,"name":"苹果手机","price":5999.1}',
				contentType : 'application/json;charset=utf-8',
				success : function(data) {
					alert("id" + data.id + " name:" + data.name);
				}
			});
		}
	</script>
</body>

</html>