<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div>
<form action="main.jsp" method="post">
	<select name="selectSearch">
		<option value="boardWriter">작성자</option>
		<option value="boardTitle">제목</option>
		<option value="boardContents">내용</option>
	</select>
	<input type="text" placeholder="search..." size="40" name="textSearch">&nbsp;&nbsp;<input type="submit" value="검색">
	<input type="hidden" name="center" value="boardSearchProc">
</form>
</div>