<%-- 
    Document   : listadoUsers
    Created on : 02-jun-2017, 15:45:59
    Author     : garra
--%>

<%@page import="java.util.List"%>
<%@page import="com.model.User"%>
<%@page import="com.repository.Repository"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users Page</title>
        
          <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="css/index_css.css">
        <link rel="stylesheet" type="text/css" href="css/listado_css.css">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        <script type="text/javascript" src="https://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js"></script>
        
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
                    <!--<li class="s-icon">
                      <a href="#" id="addClass"><span class="glyphicon glyphicon-search"></span></a>
                    </li>-->
                    <li>
                        <span id="userLogin">Bienvenido ${login}</span>
                    </li>
                </ul>
              </div><!-- /.navbar-collapse -->
            </div><!-- /.container -->
          </nav><!-- /.navbar -->
        <div class="container bootstrap snippet" style="background-color: black; border-radius: 10px">
                <div class="row">
                    <div class="col-lg-12 filaUser">
                        <div class="main-box no-header clearfix">
                            <div class="main-box-body clearfix">
                                <div class="table-responsive">
                                    <table class="table user-list" id="tableU">
                                        <thead>
                                            <tr>
                                                <th><span class="titleT">User</span></th>
                                            <th><span class="titleT">Created</span></th>
                                            <th class="text-center"><span class="titleT">Status</span></th>
                                            <th><span class="titleT">Email</span></th>
                                            <th>&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                Repository rep = new Repository();
                                                List<User> lista = rep.listUsers();
                                                for(int i=0; i<lista.size(); i++) {
                                                    User u = lista.get(i); 
                                                %>
                                            <tr>
                                                <td>
                                                    <img src="https://bootdey.com/img/Content/user_1.jpg" alt="" style="border-radius: 5px">
                                                    <span class="user-link"><%=u.getUsername()%></span>
                                                </td>
                                                <td>2013/08/12</td>
                                                <td class="text-center">
                                                    <span class="label label-success">Activo</span>
                                                </td>
                                                <td>
                                                    <span><%=u.getEmail()%></span>
                                                </td>
                                                <td style="width: 20%;">
                                                    <a href="#" class="table-link danger">
                                                        <span class="fa-stack">
                                                            <!--<i class="fa fa-square fa-stack-2x"></i>
                                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>-->
                                                            <input type="button" class="btn btn-danger" id="delete" onClick="$(this).closest('tr').remove();" value="Delete" />
                                                        </span>
                                                    </a>
                                                </td>
                                            </tr>
                                                   <% 
                                                }
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
    </body>
</html>
