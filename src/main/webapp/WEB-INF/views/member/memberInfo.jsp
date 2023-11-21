

<!-- member/memberinfo.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1,table {
	width: 700px;
	margin: 0 auto;
	text-align: center;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="wrap login">
		<br/>
		<h1>회원정보</h1>
		<br/>
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>주소</th>
			</tr>
			<c:forEach var="list" items="${list }">
				<tr>
					<td><a href="info?id=${list.id }">${list.id}</a></td>
					<td>${list.pw }</td>
					<td>${list.addr }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>