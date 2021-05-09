<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BoardBean" %>
<jsp:useBean id="bBean" class="model.BoardBean">
	<jsp:setProperty name="bBean" property="*"/>
</jsp:useBean>
<jsp:useBean id="bdao" class="model.BoardDAO" scope="application"/>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	BoardBean bb = bdao.getPostOne(num);
%>
<center>
<h1 align="center">글 수정</h1>
<form action="boardModifyProc.jsp" method="post">
<table border="1">
<tr>
	<td width="120" align="center">제목</td>
	<td width="500" style="padding:15px">
		<input type="text" name="boardTitle" value="<%= bb.getBoardTitle() %>">
	</td>
</tr>
<tr>
	<td width="120" align="center">글 종류</td>
	<td width="500" style="padding:15px">
		<select name="boardCategory">
			<option value="자유" selected>자유</option>
			<option value="데발진">데발진</option>
			<option value="정보">정보</option>
			<option value="공략">공략</option>
			<option value="초보자TIP">초보자TIP</option>
			<option value="이벤트">이벤트</option>
		</select>
	</td>
</tr>
<tr>
	<td width="120" align="center">작성글</td>
	<td width="700">
		<textarea rows="30" cols="95" name="boardContents" placeholder="내용을 입력하세요"><%= bb.getBoardContents() %></textarea>
	</td>
</tr>
<tr>
	<td width="120" align="center">3줄 요약</td>
	<td width="700">
		<textarea rows="3" cols="95" name="board3LineSummary" placeholder="3줄 요약한 내용을 입력하세요"><%= bb.getBoard3LineSummary() %></textarea>
	</td>
</tr>
</table>
<table>
<tr>
	<td align="center" style="padding:50px">
		<input type="hidden" name="postNo" value="<%=bb.getPostNo()%>">
		<input type="hidden" name="clickCounter" value="<%=bb.getClickCounter()%>">
		<input type="hidden" name="upGoodCounter" value="<%= bb.getUpGoodCounter() %>">
		<input type="hidden" name="boardWriter" value="<%= bb.getBoardWriter() %>">
		<input type="button" value="글 목록" onclick="location.href='main.jsp'">&nbsp;
		<input type="submit" value="수정">
	</td>
</tr>
</table>
</form>
</center>