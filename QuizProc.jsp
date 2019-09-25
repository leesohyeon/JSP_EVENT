<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
    <<jsp:include page="Quiz.jsp">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
try{
	String id = (String) session.getAttribute("id");
	request.setCharacterEncoding("UTF-8");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id2 = "EVENT";
	String pwd = "1234";
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pstmt = null;

	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, id2, pwd);
	String[] Answer={"둥지냉면","곰탕","소방관","무파마","더워","책피자","아야","아이럽우유","다이빙","회오리"};	
	String ramdom = request.getParameter("random");
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
}catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>