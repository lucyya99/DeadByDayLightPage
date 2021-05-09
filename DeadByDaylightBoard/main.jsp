<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
body{
	text-decoration: none;
	font-family: 'Nanum Gothic', sans-serif;
	background-color: #3b3b3b;
	color: #eeeeee;
}
a{
	text-decoration: none;
	color: #eeeeee;	
}
a:hover{
	color: #c15d5d;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데바데 게시판</title>
</head>
<body>
<center>
<div>
	<%@ include file="top.jsp" %>
</div>
<div style="margin-top:70px; margin-bottom:100px" align="center">
	<%@ include file="center.jsp" %>
</div>
<div style="height:250px">
	<%@ include file="bottom.jsp" %>
</div>
</center>
</body>
</html>