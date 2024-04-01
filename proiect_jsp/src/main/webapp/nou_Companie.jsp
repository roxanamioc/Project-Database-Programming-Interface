<%-- 
    Document   : nou_Consultatie
    Created on : Nov 14, 2016, 1:08:21 PM
    Author     : vali
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adauga companie</title>
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
        <%
            int idModelTelefon, idLocatieFabrica;
            String id1, id2, NumeTelefon, Oras, Tara;
            float Memorie_Interna, Memorie_RAM, Dimensiune_Ecran;
            int An_Aparitie;
            id1 = request.getParameter("idModelTelefon");
            id2 = request.getParameter("idLocatieFabrica");
            String Nume = request.getParameter("Nume");
            String Fondator = request.getParameter("Fondator");
            String An_Infiintare = request.getParameter("An_Infiintare");
            if (id1 != null) {
                jb.connect();
                jb.adaugaCompanie(Nume, Fondator, java.lang.Integer.parseInt(An_Infiintare), java.lang.Integer.parseInt(id1), java.lang.Integer.parseInt(id2));
                jb.disconnect();
        %>
        <p>Datele au fost adaugate.</p><%
        } else {
        jb.connect();
        ResultSet rs1 = jb.vedeTabela("modeltelefon");
        ResultSet rs2 = jb.vedeTabela("locatiefabrica");
        %>
        <h1> Suntem in tabela companie</h1>
        <form action="nou_Companie.jsp" method="post">
            <table>
                <tr>
                    <td align="right">idModelTelefon:</td>
                    <td> 
                        Selectati modelul de telefon:
			<SELECT NAME="idModelTelefon">
                                <%
                                    while(rs1.next()){
                                    	idModelTelefon = rs1.getInt("idModelTelefon");
                                    	NumeTelefon = rs1.getString("Nume");
                                    	Memorie_Interna = rs1.getFloat("Memorie_Interna");
                                    	Memorie_RAM = rs1.getFloat("Memorie_RAM");
                                    	Dimensiune_Ecran = rs1.getFloat("Dimensiune_Ecran");
                                    	An_Aparitie = rs1.getInt("An_Aparitie");
                                %>
                                    <OPTION VALUE="<%= idModelTelefon%>"><%= idModelTelefon%>,<%= NumeTelefon%>,<%= Memorie_Interna%>,<%= Memorie_RAM%>,<%= Dimensiune_Ecran%>,<%= An_Aparitie%></OPTION>
                                <%
                                    }
                                %>
			</SELECT>
                    
                    </td>
                </tr>
                <tr>
                    <td align="right">idLocatieFabrica:</td>
                    <td> 
                        Selectati locatia fabricii:
			<SELECT NAME="idLocatieFabrica">
				<!-- OPTION selected="yes" VALUE="iris1">Iris 1</OPTION -->
                                <%
                                    while(rs2.next()){
                                    	idLocatieFabrica = rs2.getInt("idLocatieFabrica");
                                    	Oras = rs2.getString("Oras");
                                    	Tara = rs2.getString("Tara");
                                %>
                                    <OPTION VALUE="<%= idLocatieFabrica%>"><%= idLocatieFabrica%>,<%= Oras%>,<%= Tara%></OPTION>
                                <%
                                    }
                                %>
			</SELECT>
                     </td>
                </tr>
                <tr>
                    <td align="right">Nume Companie</td>
                    <td> <input type="text" name="Nume" size="30" /></td>
                </tr>
                <tr>
                    <td align="right">Fondator:</td>
                    <td> <input type="text" name="Fondator" size="30" /></td>
                </tr>
                <tr>
                    <td align="right">An Infiintare:</td>
                    <td> <input type="text" name="An_Infiintare" size="30" /></td>
                </tr>
            </table>
            <input type="submit" value="Adauga compania" />
        </form>
        <%
            }
        %>
        <br/>
        <a href="index.html"><b>Home</b></a>
        <br/>
    </body>
</html>