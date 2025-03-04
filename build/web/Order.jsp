<%-- 
    Document   : Order
    Created on : Dec 26, 2023, 11:16:55 PM
    Author     : ASUS
--%>

<%@page import="java.util.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                text-align: center;

            }
/*            .bookdt{
                display: flex;
                justify-content: center;
                margin: 10px;
                padding: 20px;
            }*/
            table{
background-color: #33ccff;
                width: 100vw;
                padding: 2rem;
            }
            table tr,th ,td{
                padding: 10px;
                border: 3px solid black;

            }
           
        </style>
    </head>
    <body>
        <h1>ORDER LIST</h1>
        <%
            int i = 0;
            String str = (String) session.getAttribute("uname");
//            out.print("Welcome " + str);
if(str!=null){
        %><form>
             <input type="hidden" value="<%out.print(str);%>">
</form>
       
        <table border="1">
            <tr>
                <th>Book Id</th>
                <th>Book Name</th>
                <th>Author Name</th>
                <th>Price</th>
                <th>Total Quantity</th>
                <th>Purchases</th>
                <th>Amount</th>
                <th>Calculate</th>
                <th>Action</th>
            </tr>
            <%                for (i = 1; i <= (Integer) session.getAttribute("count"); i++) {
                    List str1 = (List) session.getAttribute("" + i);
                    Iterator itr = str1.iterator();
                    {
                        int p = 0;
            %>
            <tr>
                <%
                    while (itr.hasNext()) {
                %>
                <td id=<%=i + "" + p%>><%=(String) itr.next()%></td>
                <%
                        p++;
                    }
                %>
                <td><input type="text" id="qua<%=i%>" name="pur"></td>
                <td><label id="total<%=i%>" ></label></td>
                <td><input type="button" value="Calculate" onclick="qty(<%=i%>)" ></td>
            </tr>
                    <%
                            }
                        }
}
else{
response.sendRedirect("Ulogin.jsp");
}
                    %>
        </table>
        <input type="button" onclick="total(<%=i%>)" value="Total">
        <div id="tot"></div>


    </body>

    <script>

        function qty(k) {
            var price = parseInt(document.getElementById(k + "3").innerHTML);
            var qua = parseInt(document.getElementById("qua" + k).value);
            document.getElementById("total" + k).innerHTML = price * qua;
        }
        function total(t) {
            var sum = 0;
            for (j = 1; j < t; j++) {
                sum = sum + parseInt(document.getElementById("total" + j).innerHTML);
            }
            document.getElementById("tot").innerHTML = sum;
        }
    </script>
</html>
