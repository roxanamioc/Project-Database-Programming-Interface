<%-- 
    Document   : tabela_Pacienti
    Created on : Nov 22, 2016, 6:20:29 PM
    Author     : vali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Model Telefon</title>
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
                $("#stergeModelTelefon").hide();
                $("#modificaModelTelefon").hide();

                $("#update").click(function () {
                    $("#modificaModelTelefon").show();
                    $("#stergeModelTelefon").hide();
                });
                $("#delete").click(function () {
                    $("#stergeModelTelefon").show();
                    $("#modificaModelTelefon").hide();
                });
            });
        </script>

    </head>
    <body>
    	
        <h1 align="center"> Tabela Model Telefon:</h1> 
        <table border="1" align="center">
            <tr>
                <td><b>IdModelTelefon:</b></td>
                <td><b>Nume:</b></td>
                <td><b>Memorie Interna:</b></td>
                <td><b>Memorie RAM:</b></td>
                <td><b>Dimensiune Ecran:</b></td>
                <td><b>An Aparitie:</b></td>
            </tr>
            <c:forEach var="modelTelefon" items="${listaModelTelefon}">
                <tr>
                    <td>${modelTelefon.idModelTelefon}</td>
                    <td>${modelTelefon.nume}</td>
                    <td>${modelTelefon.memorie_Interna}</td>
                    <td>${modelTelefon.memorie_RAM}</td>
                    <td>${modelTelefon.dimensiune_Ecran}</td>
                    <td>${modelTelefon.an_Aparitie}</td>

                </tr>
            </c:forEach>
        </table>
        <form action="ModelTelefonController" method="POST">
            <p align="center">
                Modifica: <input type="checkbox" id="update"> Sterge: <input type="checkbox" id="delete" onclick="document.getElementById('nume').disabled = this.checked;
                        document.getElementById('memorie_Interna').disabled = this.checked;
                        document.getElementById('memorie_RAM').disabled = this.checked;
                        document.getElementById('dimensiune_Ecran').disabled = this.checked;
                        document.getElementById('an_Aparitie').disabled = this.checked;"><br><br>
                <select name="idModelTelefon">
                    <c:forEach items="${listaModelTelefon}" var="modelTelefon">
                        <option value="${modelTelefon.idModelTelefon}">${modelTelefon.idModelTelefon}</option>
                    </c:forEach>
                </select>
                <br><br>
                Modifica Nume: <input id="nume" type="text" name="nume"><br><br>
                Modifica Memorie Interna: <input id="memorie_Interna" type="text" name="memorie_Interna"> <br><br>
                Modifica Memorie RAM: <input id="memorie_RAM" type="text" name="memorie_RAM"> <br><br>
                Modifica Dimensiune_Ecran: <input id="dimensiune_Ecran" type="text" name="dimensiune_Ecran"> <br><br>
                Modifica An Aparitie: <input id="an_Aparitie" type="text" name="an_Aparitie"> <br><br>
                <button type="submit" id="modificaModelTelefon" name="modificaModelTelefon" class="modifica-button">Modifica</button>
				<button type="submit" id="stergeModelTelefon" name="stergeModelTelefon" class="sterge-button">Sterge</button>
            </p>
        </form>
        <p align="center">
            <a href="index.html"><b>Home</b></a>
        </p>
    </body>
</html>
