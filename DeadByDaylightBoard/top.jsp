<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h1 align="center"><a href="main.jsp">Dead By Daylight 게시판</a></h1>
<table style="background-color:#282828" width="100%">
	<tr height="80">
		<td width="33%" align="right" style="padding-right:10px"><a href="main.jsp?center=boardNotice">주의사항&nbsp;&nbsp;&nbsp;</a></td>
		<td width="33%" align="center">
			<%@ include file="boardSearchForm.jsp"%>
		</td>
		<td width="33%" align="left" style="padding:20px">&nbsp;&nbsp;&nbsp;<a href="main.jsp?center=boardWrite">게시글 등록</a></td>
	</tr>
</table>
<div>
<%
	if((String) session.getAttribute("name")==null){
%>
	<%@ include file="indexNav.jsp" %>	
<%
	}else{
%>
	<%@ include file="indexNav2.jsp" %>
<%
	}
%>
</div>