<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" href="css.css">
<center>
<h2> 로그인 </h2>
<form action="SignInProc.jsp" method="post">
<table cellspacing="12px" cellpadding=20px" border="0">
<tr>
<td width="100px" class="td">아이디 : </td>
<td width="120px" > <input type="text" name="id" class="sign"> </td>
</tr>
<tr>
<td class="td">비밀번호 : </td>
<td> <input type="password" name="pw" class="sign"></td>
</tr>
<tr>
<td colspan="2" align="center">
 <input type="submit" value="로그인" class="button">
  <input type="reset" value="취소" class="button">
 </td>
</tr>
</table>
</form>
</center>
</body>
</html>