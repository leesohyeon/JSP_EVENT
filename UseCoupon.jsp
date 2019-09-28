<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
</head>
<body>
<% 
	String c = request.getParameter("c");
	String cou = request.getParameter("cou");
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

  String sql="update mypage set "+ cou +"=null where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id='"+id+"') ";
  pstmt=conn.prepareStatement(sql); //sql문을 똑같이 적어주면 된다.
  int s=pstmt.executeUpdate();
  if(s==1){%>
	<jsp:forward page="login_Temp.jsp"/>
  <% }else{
	 
  }
  
%>
</body>
</html>