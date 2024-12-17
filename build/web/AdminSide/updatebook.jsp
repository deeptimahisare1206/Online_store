<%-- 
    Document   : updatebook
    Created on : Dec 9, 2023, 1:36:25 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>

        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                height: 100vh;
                text-align: center;
                background:radial-gradient(#3399ff,navy);
                /*place-items: center;*/
            }

            .span{
                display: flex;
                padding: 1rem 2rem;
                margin: 1rem 5rem;
                box-shadow: 0px 0px 9px 1px grey;
                background:rgba(200,240,240,0.3);
                border: 0.3rem solid #d49831;

            }

            #form{
                flex: 1;
                height:  90%;
                font-size: 2rem;
                padding: 1rem;
                border-radius: 1rem;
                width: 80%;
                display: flex;
                gap: 2rem;
                padding: 2rem 5rem;
                border-radius: 3rem;
                font-weight: bolder;
                font-size: 30px;
            }
            table{
                display: flex;
                flex-direction: column;
                height: 100%;
                justify-content: center;
                align-items: center;
                cell-spacing:2rem;
            }
            td{
                padding: 1rem;
            }

            #form input{
                padding: 1rem 2rem;
                width: 20rem;
                height: 4rem;
                background: inherit;
                outline: none;
                border: none;
                border-bottom: 0.2rem solid black;
                border-radius: 1rem;
                font-size: 1.5rem;
            }
            .card{
                display: flex;
                flex: 1;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                gap: 2rem;

            }
            .card img {

                height: 100%;
                width: 65%;
                border: 0.3rem double #312e2c;
            }
            #form .btn{
                text-align: center;
                width: 15rem;
                height: 4rem;
                border-radius: 50px;
                background:radial-gradient(orangered,orange);
                box-shadow: 1px 1px 15px gold;
                border: none;
            }
            tr:nth-child(5){
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .bt ,  input[type="file"]::file-selector-button {

                background-color: green;
                padding: 0.5rem 1.5rem;
                border-radius: 1rem;
                color: white;
            }
            .back{
                border: 0.5rem double black;
                border-radius: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                position: absolute;
                top: 1rem;
                left: 1rem;
                width: 3rem;
                height: 3rem;
            }
            @media screen and (max-width:768px){
                #form{
                    flex-direction: column;
                }
            }
        </style>
    </head>
    <body>
        <a href="bookManage.jsp">
            <div class="back">

                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-arrow-big-left"><path d="M18 15h-6v4l-7-7 7-7v4h6v6z"/></svg>
            </div></a>
        <h1>UPDATE BOOK</h1>
        <%
            String id = request.getParameter("id");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
                PreparedStatement pst = con.prepareStatement("select * from books where BookId=?");
                pst.setString(1, id);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    int Bid = rs.getInt("BookId");
                    String Bname = rs.getString("BookName");
                    String Aname = rs.getString("AuthorName");
                    String mrp = rs.getString("Price");
                    int qty = rs.getInt("Quantity");
        %>
        <div class="span">
            <div class="card">
                <img src="../booksimg/<%=rs.getString("Book_Pic")%>" height="100px"width="100px"  alt="Not Found"/>
                <!--<a class="bt" href="../bookUpdate">Update</a>-->
                <form action="../updateBookImage" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="bid" value=<%out.print(id);%>>

                    <input type="file" name="img" >
                    <input type="submit" value="Update Image" class="bt">
                </form>
            </div>
            <form action="../bookUpdate" method="post" id="form">
                <input type="hidden" name="id" value=<%out.print(id);%>>
                <table>
                    <tr>
                        <td>Book Name:</td>
                        <td>              
                            <input type="text" name="txt1" value=<%= Bname%> />
                        </td>
                    </tr>
                    <tr>
                        <td>Author Name:</td>
                        <td>
                            <input type="text" name="txt2" value=<%=Aname%> />
                        </td>
                    </tr>

                    <tr>
                        <td>Price:</td>
                        <td>
                            <input type="number" name="txt3" value=<%=mrp%> />
                        </td>
                    </tr>
                    <tr>
                        <td>Quantity:</td>
                        <td>
                            <input type="number" name="txt4" value="<%= qty%>" />
                        </td>
                    </tr>

                    <tr colspan="2" >

                        <td>

                            <input type="submit" value="Update" class="btn"/>
                        </td>

                    </tr>
                </table>



            </form>
            <%
                    }
                } catch (Exception e) {
                    out.print(e.getMessage());
                }
            %>
        </div>
    </body>
</html>
