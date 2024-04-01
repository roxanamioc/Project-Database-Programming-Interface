<%-- 
    Document   : adauga_Pacient
    Created on : Nov 22, 2016, 6:19:27 PM
    Author     : vali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
        <title>Model Telefon</title>
    </head>
    <body>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 contenteditable="true" class="text-justify">Adaugati un nou model de telefon</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <form role="form" action="ModelTelefonController" method="GET">
                            <div class="form-group">
                                <label class="control-label">Nume</label>
                                <input class="form-control" name="nume" placeholder="Introduceti Numele" type="text">
                            </div>
                            <div class="form-group">
                                <label class="control-label">MemorieInterna</label>
                                <input class="form-control" name="memorie_Interna" placeholder="Introduceti Memoria Interna" type="text">
                            </div>
                            <div class="form-group">
                                <label class="control-label">MemorieRAM</label>
                                <input class="form-control" name="memorie_RAM" placeholder="Introduceti Memoria RAM" type="text">
                            </div>
                            <div class="form-group">
                                <label class="control-label">DimensiuneEcran</label>
                                <input class="form-control" name="dimensiune_Ecran" placeholder="Introduceti Dimensiunea Ecranului" type="text">
                            </div>
                            <div class="form-group">
                                <label class="control-label">AnAparitie</label>
                                <input class="form-control" name="an_Aparitie" placeholder="Introduceti Anul Aparitiei" type="text">
                            </div>
                            <input type="submit" class="btn btn-default"  name="adaugaModelTelefon" value="Adauga">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <form role="form" action="ModelTelefonController" method="POST">
                            <div class="form-group">
                                <label class="control-label">Vizualizati datele din tabela Model Telefon</label><br>
                                <input type="submit" class="btn btn-default" name="afiseazaModelTelefon" value="Afiseaza">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
