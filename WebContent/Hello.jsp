<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>hello jsp</title>
</head>
<body>
<%
  String tt = request.getParameter("tt");
  String aa = request.getParameter("aa");
%>
<%
  if (tt.equals("")){
%>
<h3> saisire votre nom s'il vous plait</h3>
<form action="Hello.html" method="post">
<table>
<tr><td></td>
 <td><input type="submit" value="retour" name="rr"></td></tr>
</table>
</form>
</body>
<%
  } else {
%>
<h3> Hello <%=tt %></h3>
<%
  }
%>
</body>
</html>