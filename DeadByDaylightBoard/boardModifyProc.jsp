<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>    
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BoardBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<jsp:useBean id="bBean" class="model.BoardBean">
	<jsp:setProperty name="bBean" property="*"/>
</jsp:useBean>
<jsp:useBean id="bdao" class="model.BoardDAO" scope="application"/>
<%
	bdao.modifyBoard(bBean);
	response.sendRedirect("main.jsp");
%>
</center>
</body>
</html>