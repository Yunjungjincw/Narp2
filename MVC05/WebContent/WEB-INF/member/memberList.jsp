<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.bit.model.*" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script>
<script type="text/javascript">
</script>
</head>
<body>
	 <c:choose>
	 <c:when test="${empty list}">
		 <table>
			 	<tr>
			 		<td>
			 			<p>회원이 존재하지 않습니다.
			 		</td>
			 	</tr>
			 </table>
		</c:when>
		<c:otherwise>
			 <table class="table table-bordered">
			 		<tr>
			 			<td>번호</td>	
			 			<td>아아디</td>	
			 			<td>비밀번호</td>	
			 			<td>이름</td>	
			 			<td>나이</td>	
			 			<td>이메일</td>	
			 			<td>전화번호</td>	
			 		</tr>
			 		<c:forEach items="${list}" var="item">
			 				<tr>
				 			<td>${item.num}</td>	
				 			<td><a href="${ctx}/memberContent.do?num=${item.num}">${item.id}</a></td>	
				 			<td>${item.pass}</td>	
				 			<td>${item.name}</td>	
				 			<td>${item.age}</td>	
				 			<td>${item.email}</td>	
				 			<td>${item.phone}</td>
				 			<td><a href="${ctx}/memberDelete.do?num=${item.num}" class="btn btn-warning">삭제</a></td>
				 		</tr>
			 		</c:forEach>
			 	<tr>
			 		<td colspan="7" align="right"><input type="button" value="회원가입" class="btn btn-primary" onclick="location.href='${ctx}/memberRegister.do'"></td>
			 	</tr>
			 </table>
		</c:otherwise>
	</c:choose>
</body>
</html>