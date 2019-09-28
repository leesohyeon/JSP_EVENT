<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
String id = (String) session.getAttribute("id");
%>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css.css">
</head>
<body class="top">
<center>
<br>
<a href="index.jsp"><h1> 퀴즈 맞추고 상품 받아가자 !</h1></a>
</center>
<p class="menu">
<%
if(id==null){
%>
<a href="SignUp_Temp.jsp"> 회원가입</a>&nbsp;&nbsp;&nbsp;
<a href="SignIn_Temp.jsp">로그인 </a>&nbsp;&nbsp;&nbsp;
<a href="Products_Temp.jsp">상품받기 </a>&nbsp;&nbsp;&nbsp;
<%
}else if(id!=null){%>
<b><%=id%></b>님 &nbsp;&nbsp;
	<a href="login_Temp.jsp">마이페이지 </a>&nbsp;&nbsp;&nbsp;
	<a href="Products_Temp.jsp">상품받기 </a>&nbsp;&nbsp;&nbsp;
	<a href="logout.jsp">로그아웃</a>
<% 
}
%>
</p>
<hr border="3px" width="100%" color="#f7797c">
</body>
</html>