<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
</head>
<body>

<center>

<% 
String contentpage=request.getParameter("CONTENTPAGE");
%>

<table width="100%" height="800px" border="1" cellpadding="2" cellspacing="0">
<tr>
<td><jsp:include page="top.jsp" flush="false"/> </td>
</tr>
<tr>
<td width="600" valign="top" height="100%"> <jsp:include page="<%= contentpage %>" flush="false"/> </td>
</tr>
</table>
</center>
</body>
</html>
