<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
%>
<% 
	if(session.getAttribute("name")==null){
		out.println("<script>alert('로그인 후 이용가능한 서비스 입니다.'); location.href='main.jsp?center=loginForm';</script>");
	}
%>
<h1 align="center">글 작성</h1>
<script>
function cancel(){
	alert('정말 취소하시겠습니까?');
	history.go(-1);
}
</script>
<form action="boardWriteProc.jsp" method="post">
<table border="1">
<tr>
	<td width="120" align="center">제목</td>
	<td><input type="text" size="50" name="boardTitle"></td>
</tr>
<tr>
	<td width="120" align="center">글 종류</td>
	<td>
		<select name="boardCategory">
			<option value="자유" selected>자유</option>
			<option value="데발진">데발진</option>
			<option value="정보">정보</option>
			<option value="공략">공략</option>
			<option value="초보자TIP">초보자TIP</option>
			<option value="팬아트">팬아트</option>
			<option value="이벤트">이벤트</option>
		</select>
	</td>
</tr>
<tr>
	<td width="120" align="center">글쓰기</td>
	<td><textarea rows="30" cols="95" name="boardContents" placeholder="내용을 입력하세요"></textarea></td>
</tr>
<tr>
	<td width="120" align="center">3줄 요약</td>
	<td><textarea rows="3" cols="95" name="board3LineSummary" placeholder="3줄 요약한 내용을 입력하세요"></textarea></td>
</tr>
<tr>
	<td colspan="2" align="right">
		<input type="button" value="취소하기" onclick="cancel()">&nbsp;
		<input type="submit" value="등록하기">
	</td>
</tr>
</table>
</form>