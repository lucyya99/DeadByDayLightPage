<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<jsp:useBean id="bBean" class="model.BoardBean">
	<jsp:setProperty name="bBean" property="*"/>
</jsp:useBean>
<jsp:useBean id="udao" class="model.BoardUpGoodDAO" scope="application"/>
<jsp:useBean id="bdao" class="model.BoardDAO" scope="application"/>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	bdao.deleteBoard(num);
	udao.deleteUpGood(num);
%>
</center>
<script>
alert('삭제했습니다.');
location.href("main.jsp");
</script>