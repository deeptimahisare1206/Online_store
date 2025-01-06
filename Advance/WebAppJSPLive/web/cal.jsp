<%-- 
    Document   : cal
    Created on : Nov 22, 2023, 6:28:17?PM
    Author     : ASUS
--%>
<h1>
<%
    int a = Integer.parseInt(request.getParameter("num1"));
    int b = Integer.parseInt(request.getParameter("num2"));
    int c=a+b;
    out.print(c);
%>
<br>
<%= (a+b)%>
</h1>
