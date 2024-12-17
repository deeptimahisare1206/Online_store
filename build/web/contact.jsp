
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
            />
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body {
                width: 100vw;
                background-color: #312e2c;
                display: grid;
                place-items: center;
                /* display: flex;
            flex-direction: column;
            align-items: center; */
            }
            .four {
                height: 30vh;
                width: 100vw;
                /* background-color: aqua;  */
                display: flex;
                justify-content: center;
                gap: 1rem;
                position: absolute;
                top: 2%;
            }
            .c1 {
                background-color: #d49831;
                height: 25vh;
                width: 15vw;
                display: flex;
                flex-direction: column;
                gap: 1rem;
                align-items: center;
                justify-content: center;
                border-radius: 0.2rem;
                /*display: grid;*/
                /*place-items: center;*/

            }
            .contact {
                /*background-color: #ff3333f;*/
                margin-top: 12%;

            }
            .contact form {
                text-align: center;
                background-color: white;
                height: 70vh;
                width: 50vw;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 3rem;
                gap: 1rem;
                border-radius: 0.5rem;
            }
            input[type="submit"]{
                width: 20%;
                background-color: #312e2c;
                color: white;
                font-size: 1rem;
                font-weight: bolder;
                letter-spacing: 0.1rem;
            }
            input {
                height: 3.5vw;
                outline: none;
                width: 100%;
                padding: 0.5rem 2rem;
            }
            textarea{
                width: 100%;
                outline: none;
                padding: 0.5rem 2rem;
            }
            form h1 {
                font-size: 3rem;
                font-family: Georgia, "Times New Roman", Times, serif;
            }
            .home{
                background-color: white;
                position: fixed;
                top: 1rem;
                left: 1rem;
                width: 5rem;
                height: 5rem;
                padding: 1rem;
                border-radius: 100%;
            }


        </style>
        <%--<%@include file="navbar.html" %>--%>
    </head>
    <body>


        <div class="four">
            <div class="c1">
                <!--<i class="fa fa-envelope fa-3x"></i>-->
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-mail"><rect width="20" height="16" x="2" y="4" rx="2"/><path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/></svg>
                <span>jhgsjadhs@gmail.com</span>
            </div>
            <div class="c1">
                <!--                <i class="fa fa-map-marker fa-3x"></i> -->
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-map-pin"><path d="M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0"/><circle cx="12" cy="10" r="3"/></svg>
                <span>Indore, (M.P.)</span>

            </div>
            <div class="c1">
                <!--<i class="fa fa-phone fa-3x" aria-hidden="true"></i>-->
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-phone-call"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/><path d="M14.05 2a9 9 0 0 1 8 7.94"/><path d="M14.05 6A5 5 0 0 1 18 10"/></svg>
                <span>+91 XXXXX XXX17</span>
            </div>
            <div class="c1">
                <!--<i class="fa fa-fax fa-3x" aria-hidden="true"></i>-->
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-instagram"><rect width="20" height="20" x="2" y="2" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" x2="17.51" y1="6.5" y2="6.5"/></svg>
                <span>OnlineStore</span>
            </div>

        </div>
        <div class="contact">
            <form action="contact" method="post">
                <h1>Get in Touch</h1>
                <input type="text" placeholder="Name" name="Name" required/>
                <input type="email" placeholder="Email" name="Email" required=""/>
                <textarea name="feedback" id="" cols="30" rows="10"required=""></textarea>
                <input type="submit" value="Send" />
            </form>
        </div>
        <div class="home">

            <a href="index.jsp" >
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: black" class="lucide lucide-house"><path d="M15 21v-8a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v8"/><path d="M3 10a2 2 0 0 1 .709-1.528l7-5.999a2 2 0 0 1 2.582 0l7 5.999A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/></svg>
            </a>
        </div>
    </body>
</html>
