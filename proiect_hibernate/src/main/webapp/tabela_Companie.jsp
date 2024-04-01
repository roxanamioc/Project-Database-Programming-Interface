<%-- 
    Document   : tabela_Consultatie
    Created on : Nov 22, 2016, 6:20:29 PM
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
		    appearance: none;
		    -webkit-appearance: none;
		    -moz-appearance: none;
		    width: 18px;
		    height: 18px;
		    border: 2px solid #72B5FF;
		    border-radius: 5px;
		    outline: none;
		    cursor: pointer;
		    vertical-align: middle;
		}
		
		input[type="checkbox"]:checked {
		    background-color: #72B5FF;
		}
		
		table, th, td {
		    border: 1px solid #fff;
		}
		
		button {
		    background-color: #B7D9FF;
		    color: #fff;
		    padding: 8px 12px;
		    border: none;
		    cursor: pointer;
		    font-size: 16px;
		    border-radius: 5px;
		    vertical-align: middle;
		}
		
		button:hover {
		    background-color: #FFFBB7; 
		}
		
		.modifica-button {
		    background-color: #B7D9FF;
		    color: #fff;
		    padding: 8px 12px;
		    border: none;
		    cursor: pointer;
		    font-size: 16px;
		    border-radius: 5px;
		}
		
		.modifica-button:hover {
		    background-color: #FFFBB7; 
		}
		
		.sterge-button {
		    background-color: #B7D9FF;
		    color: #fff;
		    padding: 8px 12px;
		    border: none;
		    cursor: pointer;
		    font-size: 16px;
		    border-radius: 5px;
		}
		
		.sterge-button:hover {
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#stergeCompanie").hide();
                $("#modificaCompanie").hide();

                $("#update").click(function () {
                    $("#modificaCompanie").show();
                    $("#stergeCompanie").hide();
                });
                $("#delete").click(function () {
                    $("#stergeCompanie").show();
                    $("#modificaCompanie").hide();
                });
            });
        </script>

    </head>
    <body>
        <%
        	ModelTelefonDaoImpl modeltelefonDaoImpl = new ModelTelefonDaoImpl();
        	LocatieFabricaDaoImpl locatiefabricaDaoImpl = new LocatieFabricaDaoImpl();
            List<ModelTelefon> listaModelTelefon = new ArrayList();
            listaModelTelefon = modeltelefonDaoImpl.afiseazaModelTelefon();
            List<LocatieFabrica> listaLocatieFabrica = new ArrayList();
            listaLocatieFabrica = locatiefabricaDaoImpl.afiseazaLocatieFabrica();
            request.setAttribute("listaModelTelefon", listaModelTelefon);
            request.setAttribute("listaLocatieFabrica", listaLocatieFabrica);
        %>
        <h1 align="center"> Tabela Companie:</h1> 
        <table border="1" align="center">
            <tr>
                <td><b>IdCompanie:</b></td>
                <td><b>IdModelTelefon:</b></td>
                <td><b>Nume Model Telefon:</b></td>
                <td><b>Memorie Interna:</b></td>
                <td><b>Memorie RAM:</b></td>
                <td><b>Dimensiune Ecran:</b></td>
                <td><b>An Aparitie:</b></td>
                <td><b>IdLocatieFabrica:</b></td>
                <td><b>Oras:</b></td>
                <td><b>Tara:</b></td>
                <td><b>Nume Companie:</b></td>
                <td><b>Fondator:</b></td>
                <td><b>An Infiintare:</b></td>
            </tr>
            <c:forEach var="companie" items="${listaCompanie}">
                <tr>
                    <td>${companie.idCompanie}</td>
                    <td>${companie.modelTelefon.idModelTelefon}</td>
                    <td>${companie.modelTelefon.nume}</td>
                    <td>${companie.modelTelefon.memorie_Interna}</td>
                    <td>${companie.modelTelefon.memorie_RAM}</td>
                    <td>${companie.modelTelefon.dimensiune_Ecran}</td>
                    <td>${companie.modelTelefon.an_Aparitie}</td>
                    <td>${companie.locatieFabrica.idLocatieFabrica}</td>
                    <td>${companie.locatieFabrica.oras}</td>
                    <td>${companie.locatieFabrica.tara}</td>
                    <td>${companie.nume}</td>
                    <td>${companie.fondator}</td>
                    <td>${companie.an_Infiintare}</td>
                </tr>
            </c:forEach>
        </table>
        <form action="CompanieController" method="POST">
            <p align="center">
                Modifica: <input type="checkbox" id="update"> Sterge: <input type="checkbox" id="delete" onclick="document.getElementById('idModelTelefon').disabled = this.checked;
                        document.getElementById('idLocatieFabrica').disabled = this.checked;
                        document.getElementById('nume').disabled = this.checked;
                        document.getElementById('fondator').disabled = this.checked;
                        document.getElementById('an_Infiintare').disabled = this.checked;"><br><br>
                idCompanie:
                <select name="idCompanie">
                    <c:forEach items="${listaCompanie}" var="companie">
                        <option value="${companie.idCompanie}">${companie.idCompanie}</option>
                    </c:forEach>
                </select>
                <br><br>
                idModelTelefon:
                <select name="idModelTelefon">
                    <c:forEach items="${listaModelTelefon}" var="modeltelefon">
                        <option value="${modeltelefon.idModelTelefon}">${modeltelefon.idModelTelefon}, ${modeltelefon.nume}, ${modeltelefon.memorie_Interna}, ${modeltelefon.memorie_RAM}, ${modeltelefon.dimensiune_Ecran}, ${modeltelefon.an_Aparitie}</option>
                    </c:forEach>
                </select>
                <br><br>
                idLocatieFabrica:
                <select name="idLocatieFabrica">
                    <c:forEach items="${listaLocatieFabrica}" var="locatiefabrica">
                        <option value="${locatiefabrica.idLocatieFabrica}">${locatiefabrica.idLocatieFabrica}, ${locatiefabrica.oras}, ${locatiefabrica.tara}</option>
                    </c:forEach>
                </select>
                <br><br>
                Modifica numele companiei: <input id="nume" type="text" name="nume"><br><br>
                Modifica fondatorul: <input id="fondator" type="text" name="fondator"> <br><br>
                Modifica anul infiintarii: <input id="an_Infiintare" type="text" name="an_Infiintare"> <br><br>
                <button type="submit" id="modificaCompanie" name="modificaCompanie" class="modifica-button"> Modifica</button>
                <button type="submit" id="stergeCompanie" name="stergeCompanie" class="sterge-button"> Sterge </button>
            </p>
        </form>
        <br>
        <p align="center">
            <a href="index.html"><b>Home</b></a>
        </p>
    </body>
</html>
