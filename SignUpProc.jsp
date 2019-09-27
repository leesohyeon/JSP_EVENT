<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
		request.setCharacterEncoding("UTF-8");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "EVENT";
		String pwd = "1234";
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement pstmt = null;

		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, id, pwd);
		String name = request.getParameter("name");
		String id2 = request.getParameter("id");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
	if(id2.equals("admin")){
		%>
		<script>
		alert("관리자계정은 회원가입이 되지않습니다 \n 아이디를 다시 설정해주세요");
		window.history.back();
		</script>
	<%
	}else{
		String sql = "insert into member values (?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, tel);
		pstmt.setString(3, id2);
		pstmt.setString(4, pw);
		pstmt.executeUpdate();
		sql = "insert into mypage(name,tel,point) values (?,?,0)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, tel);
		pstmt.executeUpdate();
		
	%>
		<script>
		alert("회원가입이 완료되었습니다");
		location.href='index.jsp';
		</script>
	<%
	}
 	}catch(Exception e){
 		e.printStackTrace();
 		}
 %>
	
</body>
</html>