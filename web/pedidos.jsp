<%-- 
    Document   : pedidos
    Created on : 04-jun-2017, 20:02:52
    Author     : garra
--%>

<%@page import="com.model.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="com.model.Product"%>
<%@page import="com.repository.Repository"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="css/login_css.css">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <title>Pedidos</title>
    </head>
    <body>
        <div class="row" style="margin-top:20px">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                <form role="form" action="RealizarPedidos" method="post">
                    <fieldset>
                        <div class="main_div">
                        <h2>Pedidos</h2>
                            <hr class="colorgraph">
                            <input type="hidden" name="action" value="pedidos"/>
                                <div class="form-group">
                                    <input type="text" name="nomPedido" id="nomPedido" class="form-control input-lg" placeholder="Nombre del pedido">
                                </div>
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <input type="submit" class="btn btn-lg btn-block" id="buttonForm" value="Solicitar pedido">
                                    </div>
                                </div>
                        </div>
                    </fieldset>
                </form>
                
                <div class="container">
                    <h2>Listado de pedidos actuales:</h2>
                    <%
                    Repository rep = new Repository();
                List<Pedido> lista = rep.listPedidos();
                for(int i=0; i<lista.size(); i++) {
                    Pedido p = lista.get(i); 
                    %>
                    <span style="color:black"><%=p.getNomPedido()%></span>
                    <br />
                    <% 
                }
            %>
                </div>
            </div>
        </div>
    </body>
</html>
