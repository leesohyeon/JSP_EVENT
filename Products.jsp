<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css.css">
<title>Insert title here</title>

</head>
<body>
<center>
<form method=post action="ProductsProc.jsp">
<h2>응모하기</h2>
<table>
<tr>
<td><img src="수박바.PNG" width=250px height=250px></td>
<td><img src="트윅스.PNG" width=250px height=250px></td>
<td><img src="아메리카노.PNG"width=250px height=250px></td>
</tr>
<tr>
<td> <div class="custom">수박바<input type=radio name="value" value="수박바"></td>
<td> <div class="custom">트윅스<input type=radio name="value" value="트윅스" ></td>
<td> <div class="custom">아메리카노<input type=radio name="value" value="아메리카노"></td>
</tr>
<tr>
<td><img src="싸이버거.PNG"width=250px height=250px></td>
<td><img src="베라.PNG"width=250px height=250px></td>
<td><img src="CGV.PNG"width=250px height=250px></td>
</tr>
<tr>
<td> <div class="custom">싸이버거<input type=radio name="value" value="싸이버거" ></td>
<td> <div class="custom">베라<input type=radio name="value" value="베라" ></td>
<td> <div class="custom">CGV<input type=radio name="value" value="CGV" ></td>
</tr>
<tr>
<td colspan=3 align="center"><br><br>
<input type="submit" value="응모하기" class="button"></td>
</tr>
</table>
</form>
</center>
</body>
</html>