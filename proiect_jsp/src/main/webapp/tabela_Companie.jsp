<%-- 
    Document   : tabela_Consultatie
    Created on : Nov 14, 2016, 1:03:20 PM
    Author     : vali
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Companie</title>
        <style>
    body {
        font-family: 'Caveat', cursive;
        background-image: url('https://i.pinimg.com/736x/56/2b/38/562b386c33b34ebeceea16b1fdc3f183.jpg');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        color: #fff;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        animation: fadeIn 1s ease-in-out;
    }

    header {
        color: #fff;
        padding: 15px 0;
        text-align: center;
    }

    h1 {
        font-size: 28px;
    }

    p {
        margin: 10px 0;
    }

    a {
        text-decoration: none;
        color: #FFFFFF;
        font-weight: bold;
    }

    a:hover {
        color: #FF83EA;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px 0;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }

    th {
        background-color: #007bff;
        color: #fff;
    }

    input[type="checkbox"] {
        transform: scale(1.5);
    }

    input[type="submit"] {
        background-color: #CC66FF;
        color: #fff;
        padding: 10px 20px;
        border: none;
        cursor: pointer;
        font-size: 16px;
    }

    input[type="submit"]:hover {
        background-color: #83FFC3;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }

        to {
            opacity: 1;
        }
    }
</style>
    </head>
    <jsp:useBean id="jb" scope="session" class="db.JavaBean" />
    <jsp:setProperty name="jb" property="*" />
    <body>
        <h1 align="center">⭐Tabela Companie⭐</h1>
        <br/>
        <p align="center"><a href="nou_Companie.jsp"><b>🛠️Adauga o noua companie🛠️</b></a> </p>
        <form action="sterge_Companie.jsp" method="post">
            <table border="1" align="center">
                <tr>
                    <td><b>Mark:</b></td>
                    <td><b>idCompanie:</b></td>
                    <td><b>NumeCompanie:</b></td>
                    <td><b>Fondator:</b></td>
                    <td><b>An_Infiintare:</b></td>
                    <td><b>idModelTelefon:</b></td>
                    <td><b>NumeTelefon:</b></td>
                    <td><b>Memorie_Interna:</b></td>
                    <td><b>Memorie_RAM:</b></td>
                    <td><b>Dimensiune_Ecran:</b></td>
                    <td><b>An_Aparitie:</b></td>
                    <td><b>idLocatieFabrica:</b></td>
                    <td><b>Oras:</b></td>
                    <td><b>Tara:</b></td>
                </tr>
                <%
                    jb.connect();
                    ResultSet rs = jb.vedeCompanie();
                    long x;
                    while (rs.next()) {
                        x = rs.getInt("idCompanie");
                %>
                <tr>
                    <td><input type="checkbox" name="primarykey" value="<%= x%>" /></td><td><%= x%></td>
                    <td><%= rs.getString("Nume")%></td>
                    <td><%= rs.getString("Fondator")%></td>
                    <td><%= rs.getInt("An_Infiintare")%></td>
                    <td><%= rs.getInt("idModelTelefon_comp")%></td>
                    <td><%= rs.getString("Nume")%></td>
                    <td><%= rs.getFloat("Memorie_Interna")%></td>
                    <td><%= rs.getFloat("Memorie_RAM")%></td>
                    <td><%= rs.getFloat("Dimensiune_Ecran")%></td>
                    <td><%= rs.getInt("An_Aparitie")%></td>
                    <td><%= rs.getInt("idLocatieFabrica_comp")%></td>
                    <td><%= rs.getString("Oras")%></td>
                    <td><%= rs.getString("Tara")%></td>
                    <%
                        }
                    %>
                </tr>
            </table><br/>
            <p align="center">
                <input type="submit" value="Sterge liniile marcate">
            </p>
        </form>
        <%
            rs.close();
            jb.disconnect();
        %>
        <br/>
        <p align="center">
            <a href="index.html"><b>->Home<-</b></a>
            <br/>
        </p>
    </body>
</html>