<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>response</title>
</head>
<body>
<%
 int op1 =Integer.parseInt(request.getParameter("op1"));
 int op2 =Integer.parseInt(request.getParameter("op2"));
String OP =request.getParameter("OP");
%>
<%!
float R;
%>
<%
if (OP.equals("addition")){
	R=op1+op2;
}
if (OP.equals("soustraction")){
	R=op1-op2;
}
if (OP.equals("multiplication")){
	R=op1*op2;
}
if (OP.equals("division")){
	if(op2==0){
		%>
<jsp:forward page="Erreur.html"></jsp:forward>
<% 
	}else{
		R=op1/op2;
	}
}
%>
<hr>
<form action="index.html">
<table>
<tr><td>
<h3>la resultat est: </td><td><%= R %></h3></td></tr><br>
<tr><td><input type="submit" value="Retour"></td></tr>
</table>	  
</form>
</body>
</html>