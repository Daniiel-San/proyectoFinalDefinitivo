<%-- 
    Document   : index
    Created on : 21-may-2017, 20:12:54
    Author     : garra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index SA</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="css/index_css.css">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
       <!-- <script src="./js/index_js.js"></script> -->
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
                <a class="navbar-brand" href="#">Online Shop</a>
              </div>

              <!-- Collec   t the nav links, forms, and other content for toggling -->
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
          
          <div class="container">
          <div id="myCarousel" class="carousel slide" data-ride="carousel" style="background-color: black; margin-top: -19px !important">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <div class="container">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
              <img src="css/imgs/prueba.jpg"  alt="Logitech">
          </div>

          <div class="item">
            <img src="css/imgs/prueba2.jpg" alt="Nvidia">
          </div>

          <div class="item">
            <img src="css/imgs/omen.jpg" alt="omen">
          </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
        </div>
          </div>
          <br />
          <br />
          <br />
          <div class="container">
          <div style="background-color: black; height: 500px">
              <div class="col-sm-4">
		<div class="news">
                    <div class="img-figure">
                        <div class="cat">new</div>
                            <img src="css/imgs/image_news.jfif" class="img-responsive">
                    </div>	

                    <div class="title" id="content_news">
                    <h1>Comienza el reinado Europeo</h1>
                    </div>
                    <p class="description" id="content_news">
                        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden...
                    </p>

                    <p class="more" id="content_news">
                    <a href="#">read more</a><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </p>
		</div>
            </div>
              <div class="col-sm-4">
		<div class="news">
                    <div class="img-figure">
                        <div class="cat">new</div>
                            <img src="css/imgs/image_news.jfif" class="img-responsive">
                    </div>	

                    <div class="title" id="content_news">
                    <h1>Comienza el reinado Europeo</h1>
                    </div>
                    <p class="description" id="content_news">
                        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden...
                    </p>

                    <p class="more" id="content_news">
                    <a href="#">read more</a><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </p>
		</div>
            </div>
              <div class="col-sm-4">
		<div class="news">
                    <div class="img-figure">
                        <div class="cat">new</div>
                            <img src="css/imgs/image_news.jfif" class="img-responsive">
                    </div>	

                    <div class="title" id="content_news">
                    <h1>Comienza el reinado Europeo</h1>
                    </div>
                    <p class="description" id="content_news">
                        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden...
                    </p>

                    <p class="more" id="content_news">
                    <a href="#">read more</a><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </p>
		</div>
            </div>
              <div class="col-sm-4">
		<div class="news">
                    <div class="img-figure">
                        <div class="cat">new</div>
                            <img src="css/imgs/image_news.jfif" class="img-responsive">
                    </div>	

                    <div class="title" id="content_news">
                    <h1>Comienza el reinado Europeo</h1>
                    </div>
                    <p class="description" id="content_news">
                        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden...
                    </p>

                    <p class="more" id="content_news">
                    <a href="#">read more</a><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </p>
		</div>
            </div>
              <div class="col-sm-4">
		<div class="news">
                    <div class="img-figure">
                        <div class="cat">new</div>
                            <img src="css/imgs/image_news.jfif" class="img-responsive">
                    </div>	

                    <div class="title" id="content_news">
                    <h1>Comienza el reinado Europeon</h1>
                    </div>
                    <p class="description" id="content_news">
                        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden...
                    </p>

                    <p class="more" id="content_news">
                    <a href="#">read more</a><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </p>
		</div>
            </div>
              <div class="col-sm-4">
		<div class="news">
                    <div class="img-figure">
                        <div class="cat">new</div>
                            <img src="css/imgs/image_news.jfif" class="img-responsive">
                    </div>	

                    <div class="title" id="content_news">
                    <h1>Comienza el reinado Europeo</h1>
                    </div>
                    <p class="description" id="content_news">
                        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden...
                    </p>

                    <p class="more" id="content_news">
                    <a href="#">read more</a><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </p>
		</div>
            </div>
          </div>
        </div>
    </body>
</html>
