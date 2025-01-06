<%-- 
    Document   : login
    Created on : Dec 2, 2023, 6:53:07 PM
    Author     : ASUS
--%>

<%@page import="com.mvc.dao.userinterface"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mvc.dao.userdataConnectImp" %>
<jsp:useBean id="ref" class="com.mvc.dto.userinfo" scope="page"></jsp:useBean>
<jsp:setProperty name="ref" property="*"></jsp:setProperty>

<%
    userdataConnectImp us = new userdataConnectImp();
    if (us.validate(ref)) {
        session.setAttribute("user1", ref.getUser());
%>
<jsp:forward page="home.jsp"></jsp:forward>
<%
} else {
    out.print("Username or password wrong..");
%>
<jsp:include page="index.html"></jsp:include>
<%
    }


%>