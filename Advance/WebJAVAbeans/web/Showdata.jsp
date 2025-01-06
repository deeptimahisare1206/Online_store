<%-- 
    Document   : Showdata
    Created on : Nov 30, 2023, 6:28:42 PM
    Author     : ASUS
--%>

<%@page import="com.Beans.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show data</title>
    </head>
    <body>

    </body>
    <%
        String name1 = request.getParameter("name");
        int roll1=Integer.parseInt(request.getParameter("roll"));
        String add1 = request.getParameter("add");
        String city1 = request.getParameter("City");
        Student st = new Student();
        st.setName(name1);
        st.setRoll(roll1);
        st.setAdd(add1);
        st.setCity(city1);
    %>
    <%=st.getName()%>
    <%= st.getRoll()%>
    <%--<%=st.getAdd()%>--%>
    <%=st.getCity()%>

</html>
