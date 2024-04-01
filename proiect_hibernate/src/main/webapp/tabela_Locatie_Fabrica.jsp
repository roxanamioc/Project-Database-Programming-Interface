<%-- 
    Document   : tabela_Medici
    Created on : Nov 22, 2016, 6:20:29 PM
    Author     : vali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocatieFabrica</title>
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
                $("#stergeLocatieFabrica").hide();
                $("#modificaLocatieFabrica").hide();

                $("#update").click(function () {
                    $("#modificaLocatieFabrica").show();
                    $("#stergeLocatieFabrica").hide();
                });
                $("#delete").click(function () {
                    $("#stergeLocatieFabrica").show();
                    $("#modificaLocatieFabrica").hide();
                });
            });
        </script>

    </head>
    <body>
        <h1 align="center"> Tabela Locatie Fabrica:</h1> 
        <table border="1" align="center">
            <tr>
                <td><b>IdLocatieFabrica:</b></td>
                <td><b>Oras:</b></td>
                <td><b>Tara:</b></td>
            </tr>
            <c:forEach var="locatieFabrica" items="${listaLocatieFabrica}">
                <tr>
                    <td>${locatieFabrica.idLocatieFabrica}</td>
                    <td>${locatieFabrica.oras}</td>
                    <td>${locatieFabrica.tara}</td>

                </tr>
            </c:forEach>
        </table>
        <form action="LocatieFabricaController" method="POST">
            <p align="center">
                Modifica: <input type="checkbox" id="update"> Sterge: <input type="checkbox" id="delete" onclick="document.getElementById('oras').disabled = this.checked;
                        document.getElementById('tara').disabled = this.checked;"><br><br>
                <select name="idLocatieFabrica">
                    <c:forEach items="${listaLocatieFabrica}" var="locatieFabrica">
                        <option value="${locatieFabrica.idLocatieFabrica}">${locatieFabrica.idLocatieFabrica}</option>
                    </c:forEach>
                </select>
                <br><br>
                Modifica Oras: <input id="oras" type="text" name="oras"><br><br>
                Modifica Tara: <input id="tara" type="text" name="tara"> <br><br>
                <button type="submit" id="modificaLocatieFabrica" name="modificaLocatieFabrica" class="modifica-button"> Modifica</button>
                <button type="submit" id="stergeLocatieFabrica" name="stergeLocatieFabrica" class="sterge-button"> Sterge </button>
            </p>
        </form>
        <p align="center">
            <a href="index.html"><b>Home</b></a>
        </p>
    </body>
</html>
