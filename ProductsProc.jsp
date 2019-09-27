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
		request.setCharacterEncoding("UTF-8");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id2 = "EVENT";
		String pwd = "1234";
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String id = (String) session.getAttribute("id");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, id2, pwd);
		
		if(id==null){
			%>
			<script>
			alert("로그인을 해주세요");
			location.href='login_Temp.jsp';
			</script>
		<%
		}
		
		String value = request.getParameter("value");
 pstmt=conn.prepareStatement("select mypage.*,member.name from mypage, member where mypage.tel = member.tel and member.id=?"); 
		 pstmt.setString(1, id);
	     rs=pstmt.executeQuery();
	     while(rs.next()){
		int how = 0;
		int random=(int)(Math.random()*10)+1;
		System.out.println(random);
		if (value.equals("수박바")&&random<6) {
			how = 30;
			if(rs.getString("coupon1")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon1=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon2")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon2=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon3")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon3=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else{
				%>
				<script>
				alert("쿠폰함이 꽉찼거나 포인트가 부족합니다 \n 마이페이지를 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}
		} else if (value.equals("트윅스")&&random<6) {
			how = 40;
			if(rs.getString("coupon1")==null&&rs.getInt("point")>how){
				pstmt = conn.prepareStatement("update mypage set coupon1=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon2")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon2=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon3")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon3=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else{
				%>
				<script>
				alert("쿠폰함이 꽉찼거나 포인트가 부족합니다 \n 마이페이지를 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}
		} else if (value.equals("아메리카노")&&random<4) {
			how = 50;
			if(rs.getString("coupon1")==null&&rs.getInt("point")>how){
				pstmt = conn.prepareStatement("update mypage set coupon1=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon2")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon2=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon3")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon3=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else{
				%>
				<script>
				alert("쿠폰함이 꽉찼거나 포인트가 부족합니다 \n 마이페이지를 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			
			}
		} else if (value.equals("싸이버거")&&random<3) {
			how = 90;
			if(rs.getString("coupon1")==null&&rs.getInt("point")>how){
				pstmt = conn.prepareStatement("update mypage set coupon1=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon2")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon2=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon3")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon3=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else{
				%>
				<script>
				alert("쿠폰함이 꽉찼거나 포인트가 부족합니다 \n 마이페이지를 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			
			}
		} else if (value.equals("베라")&&random<3) {
			how = 100;
			if(rs.getString("coupon1")==null&&rs.getInt("point")>how){
				pstmt = conn.prepareStatement("update mypage set coupon1=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon2")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon2=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon3")==null&&rs.getInt("point")>=how){
				pstmt = conn.prepareStatement("update mypage set coupon3=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else{
				%>
				<script>
				alert("쿠폰함이 꽉찼거나 포인트가 부족합니다 \n 마이페이지를 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			
			}
		} else if (value.equals("CGV")&&random<2) {
			how = 120;
			if(rs.getString("coupon1")==null&&rs.getInt("point")>how){
				pstmt = conn.prepareStatement("update mypage set coupon1=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon2")==null){
				pstmt = conn.prepareStatement("update mypage set coupon2=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else if(rs.getString("coupon3")==null){
				pstmt = conn.prepareStatement("update mypage set coupon3=? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setString(1, value);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				pstmt = conn.prepareStatement("update mypage set  point=point-? where tel=(select member.tel from member, mypage where mypage.tel = member.tel and member.id=?)");
				pstmt.setInt(1, how);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				%>
				<script>
				alert("당첨되었습니다! \n 당첨 내역을 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			}else{
				%>
				<script>
				alert("쿠폰함이 꽉찼거나 포인트가 부족합니다 \n 마이페이지를 확인해주세요");
				location.href='login_Temp.jsp';
				</script>
			<%
			
			}
		}else{
			%>
	<script>
			alert("다음 기회에 도전해보세요!");
			location.href='login_Temp.jsp';
			</script>
	<%
		}
	     }
	%>
</body>
</html>