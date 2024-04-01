<%-- 
    Document   : adauga_Consultatie
    Created on : Nov 22, 2016, 6:19:27 PM
    Author     : vali
--%>

<%@page import="DAOImpl.LocatieFabricaDaoImpl"%>
<%@page import="DAOImpl.ModelTelefonDaoImpl"%>
<%@page import="pojo.LocatieFabrica"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.ModelTelefon"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Companie</title>
        <style>
        body {
            font-family: 'URW Chancery L', cursive;
            background-image: url('https://i.pinimg.com/736x/d5/e4/96/d5e496ffc25199552f7864918a5c40fa.jpg'); /* Înlocuiește cu calea către imaginea ta */
            background-size: cover;
            background-position: center;
            background-attachment: fixed; /* Imaginea rămâne fixată */
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            animation: fadeIn 1s ease-in-out;
        }

        header {
            
            color: #FFFF;
            padding: 10px 0;
            text-align: center;
        }

        section {
            margin: 10px 0;
            text-align: center;
        	font-size: 18px;
        }

        hr {
            border: 1px solid #ddd;
            margin: 10px 0;
        }

        h2 {
            color: #FFFF;
        }

        p {
            margin: 5px 0;
        }
        

        a {
            text-decoration: none;
            color: #FFFF;
            font-weight: bold;
        }

        a:hover {
            color: #F7CEFF;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 5px 0;
        }

        li {
            margin: 5px 0;
        }
        
        input[type="checkbox"] {
		    transform: scale(1);
		}
		
		input[type="submit"] {
		     background-color: #B7D9FF;
		     color: #fff;
		     padding: 8px 10px;
		     border: none;
		     cursor: pointer;
		     font-size: 16px;
		     border-radius: 5px;
		}
		
		input[type="submit"]:hover {
		     background-color: #FFFBB7;
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
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>
<%
		ModelTelefonDaoImpl modelTelefonDaoImpl = new ModelTelefonDaoImpl();
		LocatieFabricaDaoImpl locatieFabricaDaoImpl = new LocatieFabricaDaoImpl();
        List<ModelTelefon> listaModelTelefon = new ArrayList();
        listaModelTelefon = modelTelefonDaoImpl.afiseazaModelTelefon();
        List<LocatieFabrica> listaLocatieFabrica = new ArrayList();
        listaLocatieFabrica = locatieFabricaDaoImpl.afiseazaLocatieFabrica();
        request.setAttribute("listaModelTelefon", listaModelTelefon);
        request.setAttribute("listaLocatieFabrica", listaLocatieFabrica);
%>
        <div id="add">
            <h1> Adauga o noua companie </h1>
            <form action="CompanieController" method="GET">
                <table>
                    <tr>
                        <td> Model Telefon: </td>
                        <td>
                            <select name="idModelTelefon">
                                <c:forEach items="${listaModelTelefon}" var="modelTelefon">
                                    <option value="${modelTelefon.idModelTelefon}">${modelTelefon.idModelTelefon}, ${modelTelefon.nume}, ${modelTelefon.memorie_Interna}, ${modelTelefon.memorie_RAM}, ${modelTelefon.dimensiune_Ecran}, ${modelTelefon.an_Aparitie}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Locatie Fabrica: </td>
                        <td>
                            <select name="idLocatieFabrica">
                                <c:forEach items="${listaLocatieFabrica}" var="locatieFabrica">
                                    <option value="${locatieFabrica.idLocatieFabrica}">${locatieFabrica.idLocatieFabrica}, ${locatieFabrica.oras}, ${locatieFabrica.tara}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Nume Companie: </td>
                        <td><input type="text" name="nume"></td>
                    </tr>
                    <tr>
                        <td> Fondator: </td>
                        <td><input type="text" name="fondator"></td>
                    </tr>
                    <tr>
                        <td> An Infiintare: </td>
                        <td><input type="text" name="an_Infiintare"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="adaugaCompanie" value="Adauga"></td>

                    </tr>
                </table>
            </form>
        </div>

        <form action="CompanieController" method="POST">
            <input type="submit" name="afiseazaCompanie" value="Afiseaza"> &nbsp; &nbsp;<br>
        </form>
        <br>
        <a href="index.html"><b>Home</b></a>
    </body>
</html>
