<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BoardBean" %>
<h1>검색 결과...</h1>
<hr>
<table border="1">
<tr>
	<th width="50">번호</th>
	<th width="70">말머리</th>
	<th width="400">제목</th>
	<th width="100">글쓴이</th>
	<th width="50">조회</th>
	<th width="50">추천</th>
</tr>
<jsp:useBean id="bdao" class="model.BoardDAO" scope="application"/>
<%
	String selectSearch = request.getParameter("selectSearch");
	String textSearch = request.getParameter("textSearch");
	int counter=0;
	
	ArrayList<BoardBean> b = bdao.getBoard();
	
	if(selectSearch.equals("boardWriter")){
		for(int i=bdao.sizeBoard()-1; i>=0; i--){
			BoardBean bBean = b.get(i);
			if(bBean.getBoardWriter().contains(textSearch)){
				counter++;
%>
<tr>
	<td width="50" align="center"><%=bBean.getPostNo()%></td>
	<td width="70" align="center"><%= bBean.getBoardCategory() %></td>
	<td width="400" align="center"><a href="main.jsp?num=<%=bBean.getPostNo()%>&center=boardView"><%= bBean.getBoardTitle() %></a></td>
	<td width="100" align="center"><%= bBean.getBoardWriter() %></td>
	<td width="50" align="center"><%= bBean.getClickCounter() %></td>
	<td width="50" align="center"><%= bBean.getUpGoodCounter() %></td>
</tr>
<%			
			}
		}
	}else if(selectSearch.equals("boardTitle")){
		for(int i=bdao.sizeBoard()-1; i>=0; i--){
			BoardBean bBean = b.get(i);
			if(bBean.getBoardTitle().contains(textSearch)){
				counter++;
%>
<tr>
	<td width="50" align="center"><%=bBean.getPostNo()%></td>
	<td width="70" align="center"><%= bBean.getBoardCategory() %></td>
	<td width="400" align="center"><a href="main.jsp?num=<%=bBean.getPostNo()%>&center=boardView"><%= bBean.getBoardTitle() %></a></td>
	<td width="100" align="center"><%= bBean.getBoardWriter() %></td>
	<td width="50" align="center"><%= bBean.getClickCounter() %></td>
	<td width="50" align="center"><%= bBean.getUpGoodCounter() %></td>
</tr>
<%				
			}
		}
	}else if(selectSearch.equals("boardContents")){
		for(int i=bdao.sizeBoard()-1; i>=0; i--){
			BoardBean bBean = b.get(i);
			if(bBean.getBoardContents().contains(textSearch)){
				counter++;
%>
<tr>
	<td width="50" align="center"><%=bBean.getPostNo()%></td>
	<td width="70" align="center"><%= bBean.getBoardCategory() %></td>
	<td width="400" align="center"><a href="main.jsp?num=<%=bBean.getPostNo()%>&center=boardView"><%= bBean.getBoardTitle() %></a></td>
	<td width="100" align="center"><%= bBean.getBoardWriter() %></td>
	<td width="50" align="center"><%= bBean.getClickCounter() %></td>
	<td width="50" align="center"><%= bBean.getUpGoodCounter() %></td>
</tr>
<%	
			}
		}
	}
	
	if(counter==0){
		out.println("<tr><td colspan='6' align='center'><br><br><br>검색 결과가 없습니다...<br><br><br><br></td><tr>");
	}
%>
</table>