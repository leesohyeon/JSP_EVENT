<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
</head>
<body>

	<center>
		<% 
		//랜덤값 quizproc로 넘기기처리
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
		
	int random=(int)(Math.random()*10);
	String[] Quiz={"나뭇가지를 꺾어서 만든 음식은?","곰돌이가 좋아하는 목욕은?","소가 불이 난걸 구경만 하고 있으면?","파마한 사람이 한명도 없으면?",
		"여름마다 일어나는 전쟁은?","학생들이 가장 싫어하는 피자는?","우유가 쓰러지면서 하는 말은?","우유가 고백하면?","얼음이 죽으면?",
				"오리를 생으로 먹으면?"};
	String[] Answer={"둥지냉면","곰탕","소방관","무파마","더워","책피자","아야","아이럽우유","다이빙","회오리"};

%>
	
<form action="QuizProc.jsp?random=<%=random%>" method="post">
		<h2><%= Quiz[random] %></h2>
		<input type=text name=answer>
		<input type="submit" value="정답확인" >
		 
	</form>
	<%
		}catch(Exception e){
		e.printStackTrace();
	}
	
	%>
	
	</center>
</body>
</html>