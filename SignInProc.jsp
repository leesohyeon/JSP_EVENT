<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		request.setCharacterEncoding("euc-kr");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id2 = "EVENT";
		String pwd = "1234";
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement pstmt = null;

		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, id2, pwd);

		try {

			pstmt = conn.prepareStatement("select * from member where id=?"); //prepareStatement는 Statement와 다르게 ?로 지정된 값을 필요 할 때 마다 이용할수있다.
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (pw.equals(rs.getString("pw"))) {
					session.setAttribute("id", id);
					out.println("<script>");
					out.println("location.href='login_Temp.jsp'");
					out.println("</script>");
				}
			} else if (id.equals("admin")) {
				if(pw.equals("1234")){
				session.setAttribute("id", id);
				out.println("<script>");
				out.println("location.href='LogAdmin_Temp.jsp'");
				out.println("</script>");
				}
			}
			out.println("<script>");
			out.println("location.href='SignIn_Temp.jsp'");
			out.println("</script>");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	%>

</body>
</html>