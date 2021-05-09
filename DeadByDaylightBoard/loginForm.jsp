<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<form action="loginProc.jsp" method="post">
<table border="1">
	<tr height="100" align="center">
		<td width="300"> 닉네임 </td>
		<td width="500"> <input type="text" name="name" size="15"></td>
	</tr>
	<tr>
		<td colspan="2" height="100" align="center">
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>