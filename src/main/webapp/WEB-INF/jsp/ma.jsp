<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>Mercado Juridico</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

        <spring:url value="/resources/css/animate.min.css" var="animateCSS" />
       
        
        <link rel="shortcut icon" href="<c:url value="/resources/img/faviconmj.png"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/animate.min.css"/>">


	<style type="text/css">


			/*-- PRINCIPAL HEADER --*/

			.navbar {
				margin-bottom: 0;
				background-color:  #595959;

			}

			 .navbar li.color-white > a {
			    font-family: "Trebuchet MS", Helvetica, sans-serif;
				color: white;
			    font-weight: 150;  
			    letter-spacing:1pt;
			    font-variant: normal;
			    font-size: 15px;
			    position: relative;
			    padding: 15px 30px;
			    margin: 0 20px;
			    text-shadow: none;
			}

			 .navbar li.color-white-account-manager > a {
			    font-family: "Trebuchet MS", Helvetica, sans-serif;
			    color: white;
			    font-weight: 150;  
			    letter-spacing:1pt;
			    font-variant: normal;
			    font-size: 15px;
			    position: relative;
			    padding: 15px 40px;
			    margin: 0 0px;
			    text-shadow: none;
			}


			 .navbar li.color-black > a {
				color: black;
			}

			.navbar-inverse .navbar-nav > li > a:hover, .navbar-inverse .navbar-nav > li > a:focus {
			    background-color: #FFFFFF;
			    color: #000000;
			}

			.navbar .navbar-nav > li.open > a:hover,
			.navbar .navbar-nav > li.open > a:focus {
			    background-color: #FFFFFF;
			    color: #000000;
			}

			.navbar-inverse .navbar-nav .user-image
			{
			    float: left;
			    width: 22px;
			    height: 22px;
			    border-radius: 25%; 
			    margin-right: 10px;
			}

			.notify-nube {
			    font-size:22px;
			    color:  #e6e6e6;
			    transition: all .3s ease;-webkit-transition: all .3s ease;-moz-transition: all .3s ease;-o-transition: all .3s ease;
			}

			.notify-nube:hover {
			    color: white;
			}


			 .badge-notify-celular {
			  background-color: red;
			}
			 .badge-notify-celular:hover {
			  background-color: #white;
			}

			.badge-notify{
			   background:red;
			   position:relative;
			   top: -15px;
			   left: -25px;
			   font-size: 10px;
			  }


			body {
				padding-top: 40px;
				color:#333;
				
			}

			.main {
				margin-top: 20px;
				margin-bottom: 20px;
			}			


			/*-- PRINCIPAL MODAL  */


			.modal .modal-dialog {
			   position: relative;
			   min-width: 10px;

			}

			.modal .modal-body {
			   padding-top: 0px;
			   padding-left: 0px;
			   padding-right: 0px;
			   padding-bottom: 0px;
			}

			.modal .panel-default-heading {

			    padding: 5px 15px;
			    border-bottom: 1px solid transparent;
			    border-top-left-radius: 3px;
			    border-top-right-radius: 3px;
			}

			.modal .panel-default-info>.panel-default-heading {
			    color: white;
			    background-color: #595959;
			    border-color: #bce8f1;
			}



			/* -- MEDIA QUERY --*/

			@media screen and (max-width: 768px){
			    .post .thumb {
			        width: 100%;
			        margin-bottom: 20px;
			        margin-right: 0;
			    }

			     .navbar li.color-white > a {
			        padding: 15px 0px;
			        margin: 0 20px;
			    }

			     .navbar li.color-white-account-manager > a {
			        margin: 0px;
			        padding: 0px 15px;
			    }

			    .modal .panel-body {
			    max-height: 390px;
			    overflow-y: auto;
			    }

			}

	</style>


</head>
<body>


	<header>


		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		  <div class="container">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Desplegar / Ocultar menu</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">
				   <img src="<c:url value="/resources/img/mj-logo.png"/>" class="img-fluid" style="max-width:130px; margin-top: -10px;" >
		      </a>
		    </div>

			<!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
					        <li class="color-white"><a href="#" id="ma-muro">Muro</a></li>
					        <li class="color-white visible-xs"><a href="#" id="ma-mis-mensajes-m">Mis Mensajes <span class="badge badge-notify-celular">3</span></a>  
					    	</li>
					    	<li class="color-white visible-xs"><a href="#" id="ma-mi-perfil-m">Mi perfil</a></li>
					    	<li class="color-white"><a href="#" id="ma-planes">Planes</a></li>					    	
					        <li class="color-white visible-xs"><a href="#" data-toggle="modal" data-target="#rankingModal">Salir</a></li>
				      	</ul>
				      <ul class="nav navbar-nav navbar-right">
					        <li class="dropdown color-white-account-manager hidden-xs">
					          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
					          	 <img src="img/avatar.png" class="user-image" alt="">
                                 <span>Sebastian I.<i class="caret"></i></span>
					          </a>
						          <ul class="dropdown-menu" role="menu">
							            <li class="color-black"><a href="#" id="ma-mi-perfil">Mi perfil</a></li>
							            <li class="divider"></li>
							            <li class="color-black"><a href="#">Salir</a></li>
						          </ul>
					        </li>
				      		<li class="color-white-account-manager-notification hidden-sm hidden-xs">
				      			  <button class="btn btn-default btn-lg btn-link" id="ma-mis-mensajes">
    							  <span class="glyphicon glyphicon-comment notify-nube"></span>
  								  </button>
  								  <span class="badge badge-notify">3</span>
				      		</li>


				      </ul>
    			</div><!-- /.navbar-collapse -->
  			</div><!-- /.container -->
		</nav>


	</header>



	<div class="main container">

		<div class="row">
			<!-- CAJA DE MENSAJES -->
			<div id="load-mensajes-box"></div>
		</div>

		<div class="row">

			<!-- CAJA DE CARGA DE SECCIONES -->
			<div id="load-main-box"></div>
			
		</div>

		<div class="row">
			<!-- CAJA DE CARGA DE MODALES -->
			<div id="load-modal-box"></div>
		</div>

	</div>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<p class="text-center">Mercado Juridico Ltda. 2017</p>
				</div>
			</div>
		</div>
	</footer>

<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/Chart.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap-filestyle.min.js"/>"> </script>


<script type="text/javascript">


$(document).ready( function() {


	/* -- CARGA DE PAGINA POR DEFECTO (MURO) -- */

	var jqxhr = $.post( "_ma-principal.html", function(data) {
		//Success
		$("#load-main-box").html(data);
	})
	  .done(function() {
	  	//Second Success
	  })
	  .fail(function() {
	  	//Fails
	  })
	  .always(function() {
	  	// Finish
	  });


	/* -- SECCION MURO -- */
	$('#ma-muro').on('click', function(e) {

		var jqxhr = $.post( "_ma-principal.html", function(data) {
		//Success
			$("#load-main-box").html(data);
		})
		  .done(function() {
		  	//Second Success


		  })
		  .fail(function() {
		  	//Fails
		  })
		  .always(function() {
		  	// Finish

	  		//Cierra la nav-bar tras cargar la seccion si esa de disposivos moviles
	        if ($(".navbar-collapse").is(":visible") && $(".navbar-toggle").is(":visible") ) {
	            $('.navbar-collapse').collapse('toggle');
	        }

		  });


	});

/* -- SECCION PLANES -- */
	$('#ma-planes').on('click', function(e) {

		var jqxhr = $.post( "_ma-planes.html", function(data) {
			//Success
				$("#load-main-box").html(data);
			})
			  .done(function() {
			  	//Second Success


			  })
			  .fail(function() {
			  	//Fails
			  })
			  .always(function() {
			  	// Finish

		  		//Cierra la nav-bar tras cargar la seccion si esa de disposivos moviles
		        if ($(".navbar-collapse").is(":visible") && $(".navbar-toggle").is(":visible") ) {
		            $('.navbar-collapse').collapse('toggle');
		        }

			  });
		

	});

/* -- SECCION MI PERFIL -- */
	$('#ma-mi-perfil').on('click', function(e) {


		var jqxhr = $.post( "_ma-mi-perfil.html", function(data) {
		//Success
			$("#load-main-box").html(data);
		})
		  .done(function() {
		  	//Second Success
		  })
		  .fail(function() {
		  	//Fails
		  })
		  .always(function() {
		  	// Finish
		  	
	  		//Cierra la nav-bar tras cargar la seccion si esa de disposivos moviles
	        if ($(".navbar-collapse").is(":visible") && $(".navbar-toggle").is(":visible") ) {
	            $('.navbar-collapse').collapse('toggle');
	        }


		  });		

	});


		$('#ma-mi-perfil-m').on('click', function(e) {


		var jqxhr = $.post( "_ma-mi-perfil.html", function(data) {
		//Success
			$("#load-main-box").html(data);
		})
		  .done(function() {
		  	//Second Success
		  })
		  .fail(function() {
		  	//Fails
		  })
		  .always(function() {
		  	// Finish

	  		//Cierra la nav-bar tras cargar la seccion si esa de disposivos moviles
	        if ($(".navbar-collapse").is(":visible") && $(".navbar-toggle").is(":visible") ) {
	            $('.navbar-collapse').collapse('toggle');
	        }

		  });	


	});

/* -- SECCION MIS MENSAJES -- */
	$('#ma-mis-mensajes').on('click', function(e) {
		var jqxhr = $.post( "_ma-mis-mensajes.html", function(data) {
		//Success
			$("#load-main-box").html(data);
		})
		  .done(function() {
		  	//Second Success
		  })
		  .fail(function() {
		  	//Fails
		  })
		  .always(function() {
		  	// Finish

	  		//Cierra la nav-bar tras cargar la seccion si esa de disposivos moviles
	        if ($(".navbar-collapse").is(":visible") && $(".navbar-toggle").is(":visible") ) {
	            $('.navbar-collapse').collapse('toggle');
	        }

		  });


	});

	$('#ma-mis-mensajes-m').on('click', function(e) {
		var jqxhr = $.post( "_ma-mis-mensajes.html", function(data) {
		//Success
			$("#load-main-box").html(data);
		})
		  .done(function() {
		  	//Second Success
		  })
		  .fail(function() {
		  	//Fails
		  })
		  .always(function() {
		  	// Finish

	  		//Cierra la nav-bar tras cargar la seccion si esa de disposivos moviles
	        if ($(".navbar-collapse").is(":visible") && $(".navbar-toggle").is(":visible") ) {
	            $('.navbar-collapse').collapse('toggle');
	        }

		  });


	});	

	

});



/*-- MENSAJE BOX -- */
$(document).on('click', '#ma-mensaje-success-box-btn', function(){
	//Limpia todo el mensaje
	$('#load-mensajes-box').empty();
	$('#load-mensajes-box').removeClass("alert alert-success alert-dismissible");
	$('#load-mensajes-box').attr('role', '');
});



</script>

</body>
</html>