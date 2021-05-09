<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%! String boardName; %>
<%
	request.setCharacterEncoding("UTF-8");
	int pageType = Integer.parseInt(request.getParameter("boardName"));
	switch(pageType){
	case 0: boardName="자유";break;
	case 1: boardName="데발진";break;
	case 2: boardName="정보";break;
	case 3: boardName="공략";break;
	case 4: boardName="초보자TIP";break;
	case 5: boardName="팬아트";break;
	case 6: boardName="이벤트";break;
	}
%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BoardBean" %>
<jsp:useBean id="bdao" class="model.BoardDAO" scope="application"></jsp:useBean>
<center>
<h1> 게시글 </h1>
<table border="1" style="margin-top:15; margin-bottom:15">
<tr>
	<th width="50">번호</th>
	<th width="70">말머리</th>
	<th width="400">제목</th>
	<th width="100">글쓴이</th>
	<th width="50">조회</th>
	<th width="50">추천</th>
</tr>
<%	
	ArrayList<BoardBean> b = bdao.getBoard();

	for(int i=b.size()-1; i>=0; i--){
		BoardBean bBean = b.get(i);
		if(bBean.getBoardCategory().equals(boardName)){
%>
<tr>
	<td width="50" align="center"><%=bBean.getPostNo()%></td>
	<td width="70" align="center"><%= bBean.getBoardCategory() %></td>
	<td width="400" align="center"><a href="main.jsp?num=<%=bBean.getPostNo()%>&bottom=boardView"><%= bBean.getBoardTitle() %></a></td>
	<td width="100" align="center"><%= bBean.getBoardWriter() %></td>
	<td width="50" align="center"><%= bBean.getClickCounter() %></td>
	<td width="50" align="center"><%= bBean.getUpGoodCounter() %></td>
</tr>
<% 	
		}
	}
%>
</table>
</center>