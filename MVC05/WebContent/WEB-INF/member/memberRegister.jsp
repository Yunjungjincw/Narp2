<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입화면</h2>
	
<form action="${ctx}/memberInsert.do" method="post">
	<table class="table table-bordered">
  <tr>
    <td>아이디</td>
    <th><input type="text" name="id"></th>
  </tr>
  <tr>
    <td>패스워드</td>
    <td><input type="password" name="pass"></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><input type="text" name="name"></td>
  </tr>
  <tr>
    <td>나이</td>
    <td><input type="text" name="age"></td>
  </tr>
  <tr>
    <td>이메일</td>
    <td><input type="text" name="email"></td>
  </tr>
  <tr>
    <td>전화번호</td>
    <td><input type="text" name="phone"></td>
  </tr>
  <tr>
    <td colspan="2" align="left">
    		<input type="submit" class="btn btn-success" value="가입"/>
    		<input type="reset" class="btn btn-warning" value="취소"/>
    </td>
  </tr>
</table>
</form>
</body>
</html>