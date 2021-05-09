<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bBean" class="model.BoardBean">
	<jsp:setProperty name="bBean" property="boardTitle"/>
	<jsp:setProperty name="bBean" property="boardCategory"/>
	<jsp:setProperty name="bBean" property="boardContents"/>
	<jsp:setProperty name="bBean" property="board3LineSummary"/>
</jsp:useBean>
<jsp:useBean id="bdao" class="model.BoardDAO" scope="application"/>
<jsp:useBean id="uBean" class="model.BoardUpGoodBean">
	<jsp:setProperty name="uBean" property="*"/>
</jsp:useBean>
<%
	bBean.setBoardWriter((String) session.getAttribute("name"));
	bBean.init_clickCounter();
	bBean.init_boardWriteTime();
	bBean.init_upGoodCounter();
	bdao.insertBoard(bBean);
%>
<script>
alert('등록되었습니다.');
location.href="main.jsp";
</script>
</body>
</html>
