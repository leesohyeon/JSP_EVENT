<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/Quiz.jsp" %>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, id2, pwd);
		
	String answer = request.getParameter("answer");
	if (answer.equals(Answer[random])) {
		pstmt=conn.prepareStatement("update mypage set point=point+10 = (select * from table member where mypage.tel = member.tel and member.id=?"); //sql문을 똑같이 적어주면 된다.
	      pstmt.setString(1,id);
	      pstmt.executeQuery();
		%>
		<script>
		alert("정답입니다 \n 포인트가 적립되었습니다");
		</script>
	<%
	} else {
		%>
		<script>
		alert("틀렸습니다");
		window.history.back();
		</script>
	<%}
	%>
</body>
</html>