<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="model.BoardBean" %>
<jsp:useBean id="uBean" class="model.BoardUpGoodBean">
	<jsp:setProperty name="uBean" property="*"/>
</jsp:useBean>
<jsp:useBean id="udao" class="model.BoardUpGoodDAO" scope="application"/>
<jsp:useBean id="bdao" class="model.BoardDAO" scope="application"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = (String) session.getAttribute("name");
	String no = request.getParameter("no");
	int num = Integer.parseInt(no);
	BoardBean bBean = bdao.getPostOne(num);
%>
<%
	uBean.setUserName(name);
	uBean.setPostNo(num);
	
	if(name == null){
		out.println("<script>alert('로그인 후 이용가능한 서비스 입니다.');location.href('main.jsp?bottom=loginForm');</script>");
	}
	else if(name.equals(bBean.getBoardWriter())){
		out.println("<script>alert('본인이 게시한 글은 추천할 수 없습니다.'); location.assign('main.jsp');</script>");
	}else if(udao.getUpGoodCounter(uBean)>=3){
		out.println("<script>alert('추천은 3회만 가능합니다.');location.assign('main.jsp');</script>");
	}else{
		udao.insertUpGood(uBean);
		bdao.add_upGoodCounter(bBean);
		out.println("<script>alert('추천했습니다.');location.assign('main.jsp');</script>");
	}

%>
</body>
</html>
