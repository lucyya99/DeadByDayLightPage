<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
%>
<center>
<table>
<tr>
	<td height="60" align="center" width="90"><a href="main.jsp?center=boardCategory&boardName=0">자유</a></td>
	<td height="60" align="center" width="90"><a href="main.jsp?center=boardCategory&boardName=1">데발진</a></td>
	<td height="60" align="center" width="90"><a href="main.jsp?center=boardCategory&boardName=2">정보</a></td>
	<td height="60" align="center" width="90"><a href="main.jsp?center=boardCategory&boardName=3">공략</a></td>
	<td height="60" align="center" width="90"><a href="main.jsp?center=boardCategory&boardName=4">초보자TIP</a></td>
	<td height="60" align="center" width="90"><a href="main.jsp?center=boardCategory&boardName=5">팬아트</a></td>
	<td height="60" align="center" width="90"><a href="main.jsp?center=boardCategory&boardName=6">이벤트</a></td>
	<td height="60" align="center" width="120">
		<%= session.getAttribute("name") %> 님<br>
		<input type="button" value="로그아웃" onclick="location.href='main.jsp?center=logoutProc'">
	</td>
</tr>
</table>
</center>