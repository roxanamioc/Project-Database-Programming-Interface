<%-- 
    Document   : adauga_Medic
    Created on : Nov 22, 2016, 6:19:27 PM
    Author     : vali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locatie Fabrica</title>
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
    </head>
    <body>

        <div id="add">
            <h1> Adauga o locatie de fabrica </h1>
            <form action="LocatieFabricaController" method="GET">
                <table>
                    <tr>
                        <td> Oras: </td>
                        <td><input type="text" name="oras"></td>
                    </tr>
                    <tr>
                        <td> Tara: </td>
                        <td><input type="text" name="tara"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="adaugaLocatieFabrica" value="Adauga"></td>

                    </tr>
                </table>
            </form>
        </div>

        <form action="LocatieFabricaController" method="POST">
            <input type="submit" name="afiseazaLocatieFabrica" value="Afiseaza"> &nbsp; &nbsp;<br>
        </form>
        <br>
        <a href="index.html"><b>Home</b></a>
    </body>
</html>
