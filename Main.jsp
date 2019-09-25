<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
String contentpage=request.getParameter("CONTENTPAGE");
%>

<table width="50%" border="1" cellpadding="2" cellspacing="0">
<tr>
<td><jsp:include page="top.jsp" flush="false"/> </td>
</tr>
<tr>
<td width="600" valign="top" height="100%"> <jsp:include page="<%= contentpage %>" flush="false"/> </td>
</tr>
</table>
</body>
</html>
