<%-- 
    Document   : login
    Created on : 20-may-2017, 20:13:09
    Author     : garra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="css/login_css.css">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </head>
    <body>
        <div class="container">

        <div class="row" style="margin-top:20px">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                <form role="form" action="LoginServlet" method="post">
                    <fieldset>
                        <div class="main_div">
                            <input type="hidden" name="action" value="login"/>
                                <h2>Iniciar Sesion</h2>
                                <div class="form-group">
                                    <input type="text" name="username" id="username" class="form-control input-lg" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="pin" id="pin" class="form-control input-lg" placeholder="Pin">
                                </div>
                                
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <input id="buttonForm" type="submit" class="btn btn-lg btn-block" value="Entrar">
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <input id="buttonForm" type="button" class="btn btn-lg btn-block" value="Registrarse" onclick="window.location.href='register.jsp';">
                                    </div>
                                </div>
                        </div>   
                    </fieldset>
                </form>
            </div>
        </div>

        </div>
    </body>
</html>
