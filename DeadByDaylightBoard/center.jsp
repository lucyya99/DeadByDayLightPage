<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	if(request.getParameter("center")==null){
%>
		<jsp:include page="index.jsp" />
<%
	}else if(request.getParameter("center").equals("boardWrite")){
%>
		<jsp:include page="boardWrite.jsp" />
<%
	}else if(request.getParameter("center").equals("boardCategory")){
%>
		<jsp:include page="boardCategory.jsp" />
<%
	}else if(request.getParameter("center").equals("loginForm")){
%>
		<jsp:include page="loginForm.jsp" />
<%
	}else if(request.getParameter("center").equals("loginProc")){
%>
		<jsp:include page="loginProc.jsp" />
<%
	}else if(request.getParameter("center").equals("logoutProc")){
%>
		<jsp:include page="logoutProc.jsp" />
<%
	}else if(request.getParameter("center").equals("boardView")){
%>
		<jsp:include page="boardView.jsp" />
<%
	}else if(request.getParameter("center").equals("boardModify")){
%>
		<jsp:include page="boardModify.jsp" />
<%
	}else if(request.getParameter("center").equals("boardModifyProc")){
%>
		<jsp:include page="boardModifyProc.jsp" />
<%
	}else if(request.getParameter("center").equals("boardDelete")){
%>
		<jsp:include page="boardDelete.jsp" />
<%
	}else if(request.getParameter("center").equals("boardUpGoodProc")){
%>
		<jsp:include page="boardUpGoodProc.jsp" />
<%
	}else if(request.getParameter("center").equals("boardNotice")){
%>
		<jsp:include page="boardNotice.jsp" />
<%
	}else if(request.getParameter("center").equals("boardSearchProc")){
%>
		<jsp:include page="boardSearchProc.jsp" />
<%		
	}
%>