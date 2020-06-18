<%@
page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"
%>

<%@ page import="java.util.*, java.io.*, javax.servlet.*, java.lang.*" %>

<%
if (request.getSession(false) == null) {

} else {
	request.getSession(false).invalidate();

	response.sendRedirect("index.jsp");
}
%>