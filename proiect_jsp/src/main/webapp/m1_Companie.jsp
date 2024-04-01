<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tabela Companie</title>
    <link href="table.css" rel="stylesheet" type="text/css" media="screen" />
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
    <h1 align="center">Tabela Companie</h1>
    <br/>
    <p align="center"><a href="nou_Companie.jsp"><b>Adauga o noua companie</b></a> </p>
    <%
        jb.connect();
        

    	int aux = java.lang.Integer.parseInt(request.getParameter("primarykey"));
        ResultSet rs = jb.intoarceCompanieId(aux);
        rs.first();
        int id1 = rs.getInt("idModelTelefon_comp");
        int id2 = rs.getInt("idLocatieFabrica_comp");
        
        String Nume = rs.getString("Nume");
        String Fondator = rs.getString("Fondator");
        String An_Infiintare = rs.getString("An_Infiintare");
        
        String NumeModel = rs.getString("Nume"); 
        String Memorie_Interna = rs.getString("Memorie_Interna");
        String Memorie_RAM = rs.getString("Memorie_RAM");
        String Dimensiune_Ecran = rs.getString("Dimensiune_Ecran"); 
        String An_Aparitie = rs.getString("An_Aparitie");
        String Oras = rs.getString("Oras");
        String Tara = rs.getString("Tara"); 

        ResultSet rs1 = jb.vedeTabela("modeltelefon");
        ResultSet rs2 = jb.vedeTabela("locatiefabrica");
        int idModelTelefon, idLocatieFabrica;
    %>
    <form action="m2_Companie.jsp" method="post">
        <table align="center">
            <tr>
                <td align="right">idCompanie:</td>
                <td> <input type="text" name="idCompanie" size="30" value="<%= aux%>" readonly/></td>
            </tr>
            <tr>
                <td align="right">idModelTelefon:</td>
                <td> 
                    <SELECT NAME="idModelTelefon">
                        <%
                            while (rs1.next()) {
                                idModelTelefon = rs1.getInt("idModelTelefon");
                                NumeModel = rs1.getString("Nume"); // Rename NumeTel to NumeModel
                                Memorie_Interna = rs1.getString("Memorie_Interna");
                                Memorie_RAM = rs1.getString("Memorie_RAM");
                                Dimensiune_Ecran = rs1.getString("Dimensiune_Ecran");
                                An_Aparitie = rs1.getString("An_Aparitie");
                                if (idModelTelefon != id1) {
                        %>
                        <OPTION VALUE="<%= idModelTelefon%>"><%= idModelTelefon%>, <%= NumeModel%>, <%= Memorie_Interna%>, <%= Memorie_RAM%>, <%= Dimensiune_Ecran%>, <%= An_Aparitie%></OPTION>
                            <%
                                } else {
                            %>                
                            <OPTION selected="yes" VALUE="<%= idModelTelefon%>"><%= idModelTelefon%>, <%= NumeModel%>, <%= Memorie_Interna%>, <%= Memorie_RAM%>, <%= Dimensiune_Ecran%>, <%= An_Aparitie%></OPTION>
                                <%
                                        }
                                    }
                                %>
                        </SELECT>

                    </td>
                </tr>
                <tr>
                    <td align="right">idLocatieFabrica:</td>
                    <td> 
                        <SELECT NAME="idLocatieFabrica">
                            <%
                                while (rs2.next()) {
                                	idLocatieFabrica = rs2.getInt("idLocatieFabrica");
                                	Oras = rs2.getString("Oras");
                                	Tara = rs2.getString("Tara");
                                   
                            if (idLocatieFabrica != id2) {
                            %>
                            <OPTION VALUE="<%= idLocatieFabrica%>"><%= idLocatieFabrica%>, <%= Oras%>, <%= Tara%></OPTION>
                                <%
                                        } else {
                                %>                
                            <OPTION selected="yes" VALUE="<%= idLocatieFabrica%>"><%= idLocatieFabrica%>, <%= Oras%>, <%= Tara%></OPTION>
                                <%
                                        }
                                    }
                                %>
                        </SELECT>

                    </td>
                </tr>
                <tr>
                    <td align="right">Nume:</td>
                    <td> <input type="text" name="Nume" size="30" value="<%= Nume%>"/></td>
                </tr>
                <tr>
                    <td align="right">Fondator:</td>
                    <td> <input type="text" name="Fondator" size="30" value="<%= Fondator%>"/></td>
                </tr>
                <tr>
                    <td align="right">An_Infiintare:</td>
                    <td> <input type="text" name="An_Infiintare" size="30" value="<%= An_Infiintare%>"/></td>
                </tr>
            </table><p align="center">
                <input type="submit" value="Modifica linia">
            </p>
        </form>
        <p align="center">
            <a href="index.html"><b>Home</b></a>
            <br/>
    </body>
    <%
        rs.close();
        rs1.close();
        rs2.close();
        jb.disconnect();
    %>
</html>