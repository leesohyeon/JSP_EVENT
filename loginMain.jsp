<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
 
<%
    String id = null;
    if (session.getAttribute("id") != null) {
        id = (String) session.getAttribute("id");//로그인을 성공적으로 수행하면 메인창 입장.
    } else {
        out.println("<script>");
        out.println("location.href='SignIn_Temp.jsp'"); //로그인 실패시 다시 loginForm.jsp로 돌아간다.
        out.println("</script>");
    }
%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join Main</title>
</head>
<body>
    <h3 align = "center">
    <%=id%>로 로그인 하셨습니다 &nbsp;&nbsp;&nbsp;
    <a href="logout.jsp">로그아웃</a>
    </h3>
    
    <%	request.setCharacterEncoding("UTF-8");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id2 = "EVENT";
	String pwd = "1234";
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pstmt = null;

	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, id2, pwd);

     try{
      
      pstmt=conn.prepareStatement("select mypage.*,member.name from mypage, member where mypage.tel = member.tel and member.id=?"); //sql문을 똑같이 적어주면 된다.
      pstmt.setString(1,id);
      rs=pstmt.executeQuery();
      
      while(rs.next()) { 
        %>        
        <center>
        <h2>나의 정보</h2>
        <table border ="1" align="center">
        <tr>
                <td>이름:</td><td><%=rs.getString("name")%></td>
            </tr>
                    <tr>
                <td>전화번호:</td><td><%=rs.getString("tel")%></td>
            </tr>
            <tr>
                <td>포인트:</td><td><%=rs.getString("point")%></td>
            </tr>
            <tr>
                <td rowspan=3>당첨내역:</td><td><%=rs.getString("coupon1") %></td>
            </tr>
            <tr>
                <td><%=rs.getString("coupon2") %></td>
           </tr>
            <tr>
                <td><%=rs.getString("coupon3") %></td>
           </tr>
        </table>
        
        <a href="Quiz_Temp.jsp">>퀴즈 풀러 가기!</a>
        
    <%
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    
    </center>
</body>
</html>