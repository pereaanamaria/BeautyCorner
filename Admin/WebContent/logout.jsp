<%@
page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"
%>

<%@ page import="java.util.*, java.io.*, javax.servlet.*, java.lang.*" %>

<%
if (request.getSession(false) == null) {

} else {
	request.getSession(false).invalidate();

	response.sendRedirect("http://localhost:8080/BeautyCorner/index.jsp");
}
%>