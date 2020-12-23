<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% request.setCharacterEncoding("UTF-8"); %>
    
    <jsp:forward page="param_ex03.jsp">
    	<jsp:param value="멍멍이" name="nick"/>
    </jsp:forward>