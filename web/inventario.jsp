<%-- 
    Document   : inventario
    Created on : 22-may-2017, 17:08:27
    Author     : garra
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.Product,java.util.ArrayList,com.repository.Repository" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
          <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="css/inventario_css.css">
        <link rel="stylesheet" type="text/css" href="css/index_css.css">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        
    </head>
    <body> 
        <nav class="navbar navbar-inverse">
            <div class="container">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-3">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="indexSA.jsp">Online Shop</a>
              </div>

              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse" id="navbar-collapse-3">
                <ul class="nav navbar-nav navbar-left">
                    <li class="li_nav"><a href="inventario.jsp">Inventory</a></li>
                    <li class="li_nav"><a href="listadoUsers.jsp">Users</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <span id="userLogin">Bienvenido ${login}</span>
                    </li>
                </ul>
              </div><!-- /.navbar-collapse -->
            </div><!-- /.container -->
          </nav><!-- /.navbar -->
            <div class="container" style="background-color: #230000 !important; border-radius: 10px">    
            <div class="row category-credit" style="margin-top:20px">
                <%
                    Repository rep = new Repository();
                List<Product> lista = rep.listProduct();
                for(int i=0; i<lista.size(); i++) {
                    Product p = lista.get(i); 
                    %>
                <div class="col-lg-2 col-md-4 col-xs-6 thumb ">
                    <div class="thumbnail" style="max-height: 260px; min-height: 260px">
                    <div>
                        <img class="img-responsive" src="css/products_imgs/<%=p.getImage()%>.jpg" alt="">
                        <div class="wrapper">
                            <div class="caption post-content">
                                <span id="nomProduct"><%=p.getNomProduct()%></span>
                            </div>
                        </div>
                    </div>
                    <div class="wrapper" style="float: left">
                        <div class="post-meta">
                            <div class="price" id="precio">Price: <%=p.getPrecio()%>€</div>
                        </div>
                    </div>
                    </div>  
            </div>
                <% 
                }
            %>
            </div>
            <br />
            <br />
            <div>
                <input type="button" class="btn btn-success" value="Solicitar existencias" onclick="window.location.href='pedidos.jsp'" />
             </div>
            <br />
            <br />
            </div>
    </body>
</html>
