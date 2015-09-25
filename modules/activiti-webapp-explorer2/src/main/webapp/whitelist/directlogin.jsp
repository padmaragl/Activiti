<%-- 
    Document   : directlogin
    Created on : Sep 7, 2015, 12:40:28 AM
    Author     : Padmarag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <%=request.getParameter("loggedInUsername")%>!</h1>
        <%
            String username = request.getParameter("loggedInUsername");
            session.setAttribute("hawtio-user",username);
            String nextJSP = "/ui";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
            dispatcher.forward(request,response);
        %>        
    </body>
</html>

