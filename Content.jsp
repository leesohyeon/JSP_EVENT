<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String id = (String) session.getAttribute("id");
if(id!=null){
%>
<jsp:forward page="login_Temp.jsp"/>
<%}else{ %>
<center>
<h2>로그인을 해주세요</h2>
<h4>아이디가 없으시다면 회원가입을 먼저 해주세요!</h4>
</center>
<%} %>
</body>
</html>