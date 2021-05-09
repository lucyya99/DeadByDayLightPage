<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BoardBean" %>
<jsp:useBean id="bdao" class="model.BoardDAO" scope="application"/>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	BoardBean bBean = bdao.getPostOne(num);
	bdao.add_clickCounter(bBean);
%>
<h1 align="center">작성글</h1>
<table border="1">
<tr>
	<td width="120" align="center">제목</td>
	<td width="500" style="padding:15px"><%= bBean.getBoardTitle() %></td>
</tr>
<tr>
	<td width="120" align="center">작성자</td>
	<td width="500" style="padding:15px"><%= bBean.getBoardWriter() %></td>
</tr>
<tr>
	<td width="120" align="center">작성날짜시간</td>
	<td width="500" style="padding:15px"><%= bBean.getBoardWriteTime() %></td>
</tr>
<tr>
	<td width="120" align="center">글 종류</td>
	<td width="500" style="padding:15px"><%= bBean.getBoardCategory() %></td>
</tr>
<tr>
	<td width="120" align="center">조회수</td>
	<td width="500" style="padding:15px"><%= bBean.getClickCounter() %></td>
</tr>
<tr>
	<td width="120" align="center">작성글</td>
	<td width="700" style="white-space:pre; padding:30px"><%= bBean.getBoardContents() %></td>
</tr>
<tr>
	<td width="120" align="center">3줄 요약</td>
	<td width="700" style="white-space:pre; padding:30px"><%= bBean.getBoard3LineSummary() %></td>
</tr>
<tr>
	<td colspan="2" align="center" height="130">
		추천수<br>
		<a href="boardUpGoodProc.jsp?no=<%=bBean.getPostNo()%>"><%= bBean.getUpGoodCounter() %></a>
	</td>
</tr>
</table>
<table>
<tr>
<% 
		if(session.getAttribute("name")!=null && session.getAttribute("name").equals(bBean.getBoardWriter())){
%>
	<td align="center" style="padding:50px">
		<input type="button" value="글 목록" onclick="location.href='main.jsp?num=<%= bBean.getPostNo() %>'">&nbsp;
		<input type="button" value="수정하기" onclick="location.href='main.jsp?num=<%= bBean.getPostNo() %>&center=boardModify'">&nbsp;
		<input type="button" value="삭제하기" onclick="location.href='main.jsp?num=<%= bBean.getPostNo() %>&center=boardDelete'">
	</td>
<%
		}else{
%>
			<td align="center" style="padding:50px">
				<input type="button" value="글 목록" onclick="location.href='main.jsp?num=<%= bBean.getPostNo() %>'">
			</td>
<%		}
%>
</tr>
</table>