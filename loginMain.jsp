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
<body class="main_Back">
<link rel="stylesheet" href="css.css">
   
    
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
      String nul="없음";
      while(rs.next()) { 
    	  String cou1= rs.getString("coupon1");
    	  String cou2=rs.getString("coupon2");
    	  String cou3=rs.getString("coupon3");
    	  if(cou1==null){
    		  cou1=nul;
    	  }if(cou2==null){
    		  cou2=nul;
    	  }if(cou3==null){
    		  cou3=nul;
    	  }
        %>        
        <center>
        <h2>나의 정보</h2>
        <table align="center" cellspacing="10px" cellpadding="10px">
        <tr>
                <td width="100px">이름:</td><td width="120px"style="border-bottom: 2px solid #fe5e72" colspan=2><%=rs.getString("name")%></td>
            </tr>
                    <tr>
                <td>전화번호:</td><td colspan=2 style="border-bottom: 2px solid #fe5e72"><%=rs.getString("tel")%></td>
            </tr>
            <tr>
                <td>포인트:</td><td colspan=2 style="border-bottom: 2px solid #fe5e72"><%=rs.getInt("point")%></td>
                
            </tr>
            <tr>
                <td rowspan=3>당첨내역:</td>
                <td ><%= cou1 %></td>
                <td><input type="button" value="사용" class="button" onclick="location.href='UseCoupon.jsp?c=<%=cou1%>&cou=coupon1'"></td>
            </tr>
            <tr>
                <td><%= cou2 %></td>
                <td><input type="button" value="사용" class="button" onclick="location.href='UseCoupon.jsp?c=<%=cou2%>&cou=coupon2'"></td>
           </tr>
            <tr>
                <td><%= cou3 %></td>
                <td><input type="button" value="사용" class="button" onclick="location.href='UseCoupon.jsp?c=<%=cou3%>&cou=coupon3'"></td>
           </tr>
        </table>
        <br>
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