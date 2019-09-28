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
<table border="0" cellspacing="12px" cellpadding=20px">
<tr>
<td width="100px" class="td">아이디 : </td>
<td width="120px"> <input type="text" name="id" class="sign"></td>
</tr>
<tr>
<td class="td">비밀번호 : </td>
<td> <input type="password" name="pw" class="sign"></td>
</tr>
<tr>
<td class="td">이름 : </td>
<td> <input type="text" name="name" class="sign"></td>
</tr>
<tr>
<td class="td">전화번호 :</td>
<td> <input type="tel" name="tel" class="sign"></td>
</tr>
<tr>
<td colspan="2" align="center">
 <input type="submit" value="회원가입" class="button">
  <input type="reset" value="취소" class="button">
 </td>
</tr>
</table>
</form>
</center>
</body>
</html>