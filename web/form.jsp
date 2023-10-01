<%-- 
    Document   : form
    Created on : Sep 30, 2023, 1:38:34 AM
    Author     : Vikas Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Form Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .container{
                width: 40%;
                border: 1px solid white;
                margin: auto;
                padding: 20px;
                font-size: 20px;
                color: white;
                
            }
            #myForm table tr td input{
                font-size: 20px;
            }
            #myTable{
                color: white;
            }
        </style>
    </head>
    <body style="background: url(img/pexels-photo.jpg);background-size: cover;background-attachment: fixed;">
        <div class="container">
            <h1>My Form</h1>
            <form id="myForm" action="register-servlet" method="post">
                <table id="myTable">
                    <tr>
                        <td>Enter your name: </td>
                        <td><input type="text" name="user_name" placeholder="Enter Name"/></td>
                    </tr>
                    <tr>
                        <td>Enter your password: </td>
                        <td><input type="password" name="user_password" placeholder="Enter Password"></td>
                    </tr>
                    <tr>
                        <td>Enter your email: </td>
                        <td><input type="email" name="user_email" placeholder="Enter Email"></td>
                    </tr>
                    <tr>
                        <td>Select Gender</td>
                        <td><input type="radio" name="user_gender" value="male"/>Male &nbsp; &nbsp; <input type="radio" name="user_gender" value="female"/>Female</td>
                    </tr>
                    <tr>
                        <td>Select your course</td>
                        <td>
                            <select name="user_course">
                                <option value="java">Java</option>
                                <option value="php">Php</option>
                                <option value="python">Python</option>
                                <option value="android">Android</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <input type="checkbox" value="checked" name="condition"/>
                        </td>
                        <td>Agree Terms & Conditions</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <button type="submit">Register</button>
                            <button type="reset">Reset</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
