<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2> 회원가입 </h2>
<form action="SignUpProc.jsp" method="post">
<table>
<tr>
<td>아이디 : </td>
<td> <input type="text" name="id"></td>
</tr>
<tr>
<td>비밀번호 : </td>
<td> <input type="password" name="pw"></td>
</tr>
<tr>
<td>이름 </td>
<td> <input type="text" name="name"></td>
</tr>
<tr>
<td>전화번호</td>
<td> <input type="tel" name="tel"></td>
</tr>
<tr>
<td colspan="2" align="center">
 <input type="submit" value="login">
  <input type="reset" value="reset">
 </td>
</tr>
</table>
</form>
</center>
</body>
</html>