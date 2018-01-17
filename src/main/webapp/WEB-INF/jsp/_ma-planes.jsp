<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">


/*-- PANEL PLAN PRESENTACION --*/

body {
  margin-top: 15px;
}

.carousel-inner,.carousel,.item,.fill {
  height:100%;
  width:100%;
  background-position:center center;
  background-size:cover;
}
.slide-wrapper{display:inline;}
.slide-wrapper .container{padding:0px;}

.ma-planes-carrusel-box {
	height:350px; 
	margin: 0 auto
}

/*------------------------------ vertical bootstrap slider----------------------------*/

.carousel-inner> .item.next ,  .carousel-inner > .item.active.right{ transform: translateY(100%); -webkit-transform: translateY(100%); -ms-transform: translateY(100%);
-moz-transform: translateY(100%); -o-transform: translateY(100%);  top: 0;left:0;}
.carousel-inner > .item.prev ,.carousel-inner > .item.active.left{ transform: translateY(-100%); -webkit-transform: translateY(-100%);  -moz-transform: translateY(-100%);
-ms-transform: translateY(-100%); -o-transform: translateY(-100%); top: 0; left:0;}
.carousel-inner > .item.next.left , .carousel-inner > .item.prev.right , .carousel-inner > .item.active{transform:translateY(0); -webkit-transform:translateY(0);
-ms-transform:translateY(0);-moz-transform:translateY(0); -o-transform:translateY(0); top:0; left:0;}

/*------------------------------- vertical carousel indicators ------------------------------*/

.carousel-indicators{
	height:10px;
}

.carousel-indicators li{display:inline-block; margin-bottom:5px; border:1px solid #ffffff; }
.carousel-indicators li.active{margin-bottom:5px; background:#ffffff;}


/*-------- Animation slider ------*/

.animated{
	animation-duration:3s;
	-webkit-animation-duration:3s;
	-moz-animation-duration:3s;
	-ms-animation-duration:3s;
	-o-animation-duration:3s;
	visibility:visible;
	opacity:1;
	transition:all 0.3s ease;
}

.carousel-img{  
	display: inline-block;
    margin: 0 auto;
    width: 100%;
    text-align: center;
    max-width: 420px;
}

.item .carousel-desc{
	color:#fff; 
	text-align:left;
	padding-bottom: 50px;
}

.item img{margin:auto;visibility:hidden; opacity:0; transition:all 0.3s ease; -webkit-transition:all 0.3s ease; -moz-transition:all 0.3s ease; -ms-transition:all 0.3s ease; -o-transition:all 0.3s ease;}
.item  h2{font-size:50px; animation-delay:1.5s;animation-duration:1s; }
.item  p{animation-delay:2.5s;animation-duration:1s; width:50%; margin:auto;}
.item .fill{padding:0px 30px; display:table; }
.item .inner-content{display: table-cell;vertical-align: middle;}

.item1 .col-md-6{float:none; display:inline-block; vertical-align:middle; width:49%;}
.item1.active .carousel-img img.animated{visibility:visible; opacity:1; transition:all 0.3s ease; animation-duration:2s; animation-delay:0.3s}
.item1 h2 , .item1.active h2{visibility:hidden; opacity:0; transition:all 5s ease; }
.item1.active h2.animated{visibility:visible; opacity:1;  animation-delay:1.5s}
.item1 p , .item1.active p{visibility:hidden; opacity:0; transition:all 5s ease; width:100%;  }
.item1.active p.animated{visibility:visible; opacity:1;  animation-delay:2.5s;}

.item2 .col-md-6{float:none; display:inline-block; vertical-align:middle; width:49%;}
.item2.active .carousel-img img.animated{visibility:visible; opacity:1; transition:all 0.3s ease; animation-duration:2s; animation-delay:0.3s}
.item2 h2 , .item2.active h2{visibility:hidden; opacity:0; transition:all 5s ease; }
.item2.active h2.animated{visibility:visible; opacity:1;  animation-delay:1.5s}
.item2 p , .item2.active p{visibility:hidden; opacity:0; transition:all 5s ease; width:100%;  }
.item2.active p.animated{visibility:visible; opacity:1;  animation-delay:2.5s;}

.item3 .col-md-6{float:none; display:inline-block; vertical-align:middle; width:49%;}
.item3.active .carousel-img img.animated{visibility:visible; opacity:1; transition:all 0.3s ease; animation-duration:2s; animation-delay:0.3s}
.item3 h2 , .item3.active h2{visibility:hidden; opacity:0; transition:all 5s ease; }
.item3.active h2.animated{visibility:visible; opacity:1;  animation-delay:1.5s}
.item3 p , .item3.active p{visibility:hidden; opacity:0; transition:all 5s ease; width:100%;  }
.item3.active p.animated{visibility:visible; opacity:1;  animation-delay:2.5s;}

.item4 .col-md-6{float:none; display:inline-block; vertical-align:middle; width:49%;}
.item4.active .carousel-img img.animated{visibility:visible; opacity:1; transition:all 0.3s ease; animation-duration:2s; animation-delay:0.3s}
.item4 h2 , .item4.active h2{visibility:hidden; opacity:0; transition:all 5s ease; }
.item4.active h2.animated{visibility:visible; opacity:1;  animation-delay:1.5s}
.item4 p , .item4.active p{visibility:hidden; opacity:0; transition:all 5s ease; width:100%;  }
.item4.active p.animated{visibility:visible; opacity:1;  animation-delay:2.5s;}

.item5 .col-md-6{float:none; display:inline-block; vertical-align:middle; width:49%;}
.item5.active .carousel-img img.animated{visibility:visible; opacity:1; transition:all 0.3s ease; animation-duration:2s; animation-delay:0.3s}
.item5 h2 , .item5.active h2{visibility:hidden; opacity:0; transition:all 5s ease; }
.item5.active h2.animated{visibility:visible; opacity:1;  animation-delay:1.5s}
.item5 p , .item5.active p{visibility:hidden; opacity:0; transition:all 5s ease; width:100%;  }
.item5.active p.animated{visibility:visible; opacity:1;  animation-delay:2.5s;}

@media(max-width:991px)
{

.item .carousel-desc , .item.item3 .carousel-desc{text-align:left;}
.item  h2{font-size:28px; margin-top:0px;}
.item .carousel-desc p {width:100%;}
.item1 .col-md-6{width:100%; text-align:center;}
.item2 .col-md-6{width:100%; text-align:center;}
.item3 .col-md-6{width:100%; text-align:center;}
.item4 .col-md-6{width:100%; text-align:center;}
.item5 .col-md-6{width:100%; text-align:center;}


.carousel-img{  
padding-top: 20px;
display: inline-block;
margin: 0 auto;
width: 100%;
text-align: center;
max-width: 200px;
}

}
@media(max-width:768px)
{
.item .carousel-img img, .item.active .carousel-img img{max-height:155px;}
.item  h2{font-size:25px; margin-top:0px;}
.item .carousel-desc p{width:100%; font-size:12px;}
}
@media(max-width:480px)
{
.item .carousel-img img, .item.active .carousel-img img{max-height:125px;}
.item  h2{font-size:20px;}
.item .carousel-desc p{width:100%;}
}


/*-- PANEL PLAN VITRINA --*/

.panel
{
    text-align: center;
}
.panel:hover { box-shadow: 0 1px 5px rgba(0, 0, 0, 0.4), 0 1px 5px rgba(130, 130, 130, 0.35); }
.panel-body
{
    padding: 0px;
    text-align: center;
}

.the-price
{
    background-color: rgba(220,220,220,.17);
    box-shadow: 0 1px 0 #dcdcdc, inset 0 1px 0 #fff;
    padding: 20px;
    margin: 0;
}

.the-price h1
{
    line-height: 1em;
    padding: 0;
    margin: 0;
}

.subscript
{
    font-size: 25px;
}

/* CSS-only ribbon styles    */
.cnrflash
{
    /*Position correctly within container*/
    position: absolute;
    top: -9px;
    right: 4px;
    z-index: 1; /*Set overflow to hidden, to mask inner square*/
    overflow: hidden; /*Set size and add subtle rounding  		to soften edges*/
    width: 100px;
    height: 100px;
    border-radius: 3px 5px 3px 0;
}
.cnrflash-inner
{
    /*Set position, make larger then 			container and rotate 45 degrees*/
    position: absolute;
    bottom: 0;
    right: 0;
    width: 145px;
    height: 145px;
    -ms-transform: rotate(45deg); /* IE 9 */
    -o-transform: rotate(45deg); /* Opera */
    -moz-transform: rotate(45deg); /* Firefox */
    -webkit-transform: rotate(45deg); /* Safari and Chrome */
    -webkit-transform-origin: 100% 100%; /*Purely decorative effects to add texture and stuff*/ /* Safari and Chrome */
    -ms-transform-origin: 100% 100%;  /* IE 9 */
    -o-transform-origin: 100% 100%; /* Opera */
    -moz-transform-origin: 100% 100%; /* Firefox */
    background-image: linear-gradient(90deg, transparent 50%, rgba(255,255,255,.1) 50%), linear-gradient(0deg, transparent 0%, rgba(1,1,1,.2) 50%);
    background-size: 4px,auto, auto,auto;
    background-color: #aa0101;
    box-shadow: 0 3px 3px 0 rgba(1,1,1,.5), 0 1px 0 0 rgba(1,1,1,.5), inset 0 -1px 8px 0 rgba(255,255,255,.3), inset 0 -1px 0 0 rgba(255,255,255,.2);
}
.cnrflash-inner:before, .cnrflash-inner:after
{
    /*Use the border triangle trick to make  				it look like the ribbon wraps round it's 				container*/
    content: "";
    display: block;
    position: absolute;
    bottom: -16px;
    width: 0;
    height: 0;
    border: 8px solid #800000;
}
.cnrflash-inner:before
{
    left: 1px;
    border-bottom-color: transparent;
    border-right-color: transparent;
}
.cnrflash-inner:after
{
    right: 0;
    border-bottom-color: transparent;
    border-left-color: transparent;
}
.cnrflash-label
{
    /*Make the label look nice*/
    position: absolute;
    bottom: 0;
    left: 0;
    display: block;
    width: 100%;
    padding-bottom: 5px;
    color: #fff;
    text-shadow: 0 1px 1px rgba(1,1,1,.8);
    font-size: 0.95em;
    font-weight: bold;
    text-align: center;
}

.ma-planes-panel-heading {
	background-color: #595959;
	color: #ffffff;
}

.ma-planes-panel-vitrina {
	padding-top: 20px;

}

h3 {
	font-size: 22px;
}

/*-- REDEM CODE-- */

</style>


<div class="container">
	<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="row">
				<div class="col-md-12">
		    		<section class="slide-wrapper">
		            	<div id="ma-planes-carrusel" class="carousel slide ma-planes-carrusel-box">
		                <!-- Indicators -->
			                <ol class="carousel-indicators">
			                    <li data-target="#ma-planes-carrusel" data-slide-to="0" class="active"></li>
			                    <li data-target="#ma-planes-carrusel" data-slide-to="1"></li>
			                    <li data-target="#ma-planes-carrusel" data-slide-to="2"></li>
			                    <li data-target="#ma-planes-carrusel" data-slide-to="3"></li>
			                    <li data-target="#ma-planes-carrusel" data-slide-to="4"></li>


			                 </ol>

		                <!-- Wrapper for slides -->
		                <div class="carousel-inner">
		                    <div class="item item1 active">
		                        <div class="fill" style="background-color:#5B5EA3;">
		                            <div class="inner-content">


		                                <div class="col-md-6">

		                                    <div class="carousel-img">
		                                        <img src="<c:url value="/resources/img/posicionate.png"/>" alt="sofa" class="img img-responsive" />
		                                    </div>
		                                </div>

		                                <div class="col-md-6">
		                                    <div class="carousel-desc">

		                                        <h3>PRESTIGIO PROFESIONAL</h3>
		                                        <p>Mejora tu posición y prestigio profesional ante la competencia. En Mercado Jurídico, con nuestro ranking, tú podrás ascender y marcar la diferencia en calidad de servicio.</p>

		                                    </div>
		                                </div>

		                            </div>
		                        </div>
		                    </div>
		                    <div class="item item2">
		                        <div class="fill" style="background-color:#7fc2f4;">
		                            <div class="inner-content">


		                                <div class="col-md-6">

		                                    <div class="carousel-img">
		                                        <img src="<c:url value="/resources/img/gente-hablando.png"/>" alt="sofa" class="img img-responsive" />
		                                    </div>
		                                </div>

		                                <div class="col-md-6">
		                                    <div class="carousel-desc">

		                                        <h3>CONTACTOS ILIMITADOS</h3>
		                                        <p>Contacta a tus clientes libremente según tus habilidades, así, podrás crecer en tu área laboral, y consolidar tu propia especialidad profesional en Mercado Jurídico.</p>

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="item item3">
		                        <div class="fill" style="background-color:#A41919;">
		                            <div class="inner-content">

		                                <div class="col-md-6">

		                                    <div class="carousel-img">
		                                        <img src="<c:url value="/resources/img/mapa-mundo.png"/>" alt="sofa" class="img img-responsive" style="max-width: 100%" />
		                                    </div>
		                                </div>

		                                <div class="col-md-6">
		                                    <div class="carousel-desc">

		                                        <h3>VISIBILIDAD EN TODO EL PAIS</h3>
		                                        <p>Obten visibilidad en todas nuestras regiónes. Así, podrás desarrollar la profesión libremente, pudiendo cubrir más clientes, y ampliando tus horizontes en la zona que decidas ejercer.</p>

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>

		                    <div class="item item4">
		                        <div class="fill" style="background-color:#5B5EA3;">
		                            <div class="inner-content">


		                                <div class="col-md-6">

		                                    <div class="carousel-img">
		                                        <img src="<c:url value="/resources/img/resena.png"/>" alt="sofa" class="img img-responsive" />
		                                    </div>
		                                </div>

		                                <div class="col-md-6">
		                                    <div class="carousel-desc">

		                                        <h3>RESEÑA ACADÉMICA</h3>
		                                        <p>Además, podrás agregar tú historial profesional o reseña académica. Así, clientes conocerán acerca de trayectoria, estudios, y experiencia, a fin de mejorar tus posibilidades de ser contactado.
												</p>
		                                    </div>
		                                </div>

		                            </div>
		                        </div>
		                    </div>

		                    <div class="item item5">
		                        <div class="fill" style="background-color:#7fc2f4;">
		                            <div class="inner-content">


		                                <div class="col-md-6">

		                                    <div class="carousel-img">
		                                        <img src="<c:url value="/resources/img/estadisticas.png"/>" alt="sofa" class="img img-responsive" />
		                                    </div>
		                                </div>

		                                <div class="col-md-6">
		                                    <div class="carousel-desc">

		                                        <h3>ESTADÍSTICAS</h3>
		                                        <p>Poseerás, además de todos los beneficios exclusivos que contiene Mercado Jurídico, un sistema de estadísticas  que, permitirán potenciar desde datos matemáticos exactos tus opciones de éxito en esta profesión.

												</p>

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>


		                </div>

						  <!-- Controls -->
						  <a class="left carousel-control" href="#ma-planes-carrusel" role="button" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left"></span>
						  </a>
						  <a class="right carousel-control" href="#ma-planes-carrusel" role="button" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right"></span>
						  </a>

		            </div>
		    </section>

					
				</div>
			</div>

			<div class="row ma-planes-panel-vitrina">
				<div class="col-md-4">
		            <div class="panel">
		                <div class="panel-heading ma-planes-panel-heading">
		                    <h3 class="panel-title">1 Mes</h3>
		                </div>
		                <div class="panel-body">
		                    <div class="the-price">
		                        <h1>
		                            $10<span class="subscript">/mo</span></h1>
		                        <small>1 month FREE trial</small>
		                    </div>
		                    <table class="table">
		                        <tr>
		                            <td>
										PRESTIGIO PROFESIONAL
		                            </td>
		                        </tr>
		                        <tr class="active">
		                            <td>
										CONTACTOS ILIMITADOS		                           
									 </td>
		                        </tr>
		                        <tr>
		                            <td>
										VISIBILIDAD EN TODO EL PAIS		                            
									</td>
		                        </tr>
		                        <tr class="active">
		                            <td>
		                                RESEÑA ACADÉMICA
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                ESTADÍSTICAS
		                            </td>
		                        </tr>
		                    </table>

		                </div>
		                <div class="panel-footer">
		                    <a href="http://www.jquery2dotnet.com" class="btn btn-warning" role="button">Comprar</a>
		                </div>
		            </div>
				</div>

				<div class="col-md-4">
		            <div class="panel">
		                <div class="panel-heading ma-planes-panel-heading">
		                    <h3 class="panel-title">3 Meses</h3>
		                </div>
		                <div class="panel-body">
		                    <div class="the-price">
		                        <h1>
		                            $10<span class="subscript">/mo</span></h1>
		                        <small>1 month FREE trial</small>
		                    </div>
		                    <table class="table">
		                        <tr>
		                            <td>
										PRESTIGIO PROFESIONAL
		                            </td>
		                        </tr>
		                        <tr class="active">
		                            <td>
										CONTACTOS ILIMITADOS		                            
									</td>
		                        </tr>
		                        <tr>
		                            <td>
										VISIBILIDAD EN TODO EL PAIS
		                            </td>
		                        </tr>
		                        <tr class="active">
		                            <td>
										RESEÑA ACADÉMICA		                            
									</td>
		                        </tr>
		                        <tr>
		                            <td>
		                                ESTADÍSTICAS
		                            </td>
		                        </tr>
		                    </table>
		                </div>
		                <div class="panel-footer">
		                    <a href="http://www.jquery2dotnet.com" class="btn btn-warning" role="button">Comprar</a>
		                </div>
		            </div>
				</div>

				<div class="col-md-4">
		            <div class="panel">
		                <div class="panel-heading ma-planes-panel-heading">
		                    <h3 class="panel-title">6 Meses</h3>
		                </div>
		                <div class="panel-body">
		                    <div class="the-price">
		                        <h1>
		                            $10<span class="subscript">/mo</span></h1>
		                        <small>1 month FREE trial</small>
		                    </div>
		                    <table class="table">
		                        <tr>
		                            <td>
										PRESTIGIO PROFESIONAL
		                            </td>
		                        </tr>
		                        <tr class="active">
		                            <td>
										CONTACTOS ILIMITADOS		                            
									</td>
		                        </tr>
		                        <tr>
		                            <td>
										VISIBILIDAD EN TODO EL PAIS		                            
									</td>
		                        </tr>
		                        <tr class="active">
		                            <td>
		                                RESEÑA ACADÉMICA
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                ESTADÍSTICAS
		                            </td>
		                        </tr>
		                    </table>
		                </div>
		                <div class="panel-footer">
		                    <a href="http://www.jquery2dotnet.com" class="btn btn-warning" role="button">Comprar</a>
		                </div>
		            </div>
				</div>
			</div>

			<div class="row">
				<!-- Aqui va el codigo promocional-->

				<div class="col-md-12">
	                <div class="text-center">
	                        <div class="well">
	                            <h4 align="center">
	                            	¿Tienes un Codigo Promocional?
	                        	</h4>
	                                <div class="form-group" id="ma-planes-redemcode-group">
	                                    <label for="pricefrom" class="control-label">
	                                    	Ingr&eacute;salo aqu&iacute;
	                                	</label>                                	
                                        <input type="text" class="form-control input-lg" id="ma-planes-redemcode-input"
                                         value placeholder="XXXXXXXXXXXXXXXX" maxlength="16">
                                        <i id="ma-planes-redemcode-error-icon"></i>
										<span class="help-block text-right" id="ma-planes-redemcode-error-mensaje"></span>
	                                </div>
		                                <a href="#" class="btn btn-warning" role="button" id="ma-planes-redemcode-btn">
		                                	Canjear
		                                </a>
	                        </div>
	                    </div>
	           		</div>
				</div>
          	</div>

		</div>
	<div class="col-md-1"></div>
</div>


<script type="text/javascript">

	$(document).ready(function(){
// invoke the carousel
    $('#ma-planes-carrusel').carousel({
      interval:9000
    });

// scroll slides on mouse scroll 
$('#ma-planes-carrusel').bind('mousewheel DOMMouseScroll', function(e){

        if(e.originalEvent.wheelDelta > 0 || e.originalEvent.detail < 0) {
            $(this).carousel('prev');
        }
        else{
            $(this).carousel('next');	
        }
    });


    
});
//animated  carousel start
$(document).ready(function(){

//to add  start animation on load for first slide 
$(function(){
		$.fn.extend({
			animateCss: function (animationName) {
				var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
				this.addClass('animated ' + animationName).one(animationEnd, function() {
					$(this).removeClass(animationName);
				});
			}
		});
			 $('.item1.active img').animateCss('slideInDown');
			 $('.item1.active h2').animateCss('zoomIn');
			 $('.item1.active p').animateCss('fadeIn');
			 
});
	
//to start animation on  mousescroll , click and swipe

     $("#ma-planes-carrusel").on('slide.bs.carousel', function () {
		$.fn.extend({
			animateCss: function (animationName) {
				var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
				this.addClass('animated ' + animationName).one(animationEnd, function() {
					$(this).removeClass(animationName);
				});
			}
		});
	
// add animation type  from animate.css on the element which you want to animate

		$('.item1 img').animateCss('slideInDown');
		$('.item1 h2').animateCss('zoomIn');
		$('.item1 p').animateCss('fadeIn');
		
		$('.item2 img').animateCss('zoomIn');
		$('.item2 h2').animateCss('pulse');
		$('.item2 p').animateCss('fadeIn');
		
		$('.item3 img').animateCss('fadeInLeft');
		$('.item3 h2').animateCss('fadeInDown');
		$('.item3 p').animateCss('fadeIn');

		$('.item4 img').animateCss('slideInDown');
		$('.item4 h2').animateCss('zoomIn');
		$('.item4 p').animateCss('fadeIn');

		$('.item5 img').animateCss('zoomIn');
		$('.item5 h2').animateCss('pulse');
		$('.item5 p').animateCss('fadeIn');


    });

/* -- CODIGOS PROMOCIONALES -- */
	
	$('#ma-planes-redemcode-btn').on('click', function(e) {

		var flag = true;
		var rclenght = $('#ma-planes-redemcode-input').val().length;

			//Remueve mensajes de error
	    	$('#ma-planes-redemcode-error-mensaje').empty();
	    	$('#ma-planes-redemcode-group').removeClass("has-feedback has-error");
	    	$('#ma-planes-redemcode-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");



	    	//Si redem-code esta vacio entonces..
				if (!$.trim($('#ma-planes-redemcode-input').val())) {
	    		flag = false;
		    	//Agrega clases y estilos para muestra de error
		    	$('#ma-planes-redemcode-group').addClass("has-feedback has-error");
		    	$('#ma-planes-redemcode-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
		    	$('<p>Debe ingresar un codigo.</p>').appendTo('#ma-planes-redemcode-error-mensaje');
	

			}
	    	
			//Si redem-code esta entre 1 y 15..

				if ( rclenght >= 1 && rclenght <=15 ) 
				{
	    		flag = false;
		    	//Agrega clases y estilos para muestra de error
		    	$('#ma-planes-redemcode-group').addClass("has-feedback has-error");
		    	$('#ma-planes-redemcode-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
		    	$('<p>El codigo ingresado no cumple el formato.</p>').appendTo('#ma-planes-redemcode-error-mensaje');
	
			}


			//Check si redem code es valido en bd
			var valid = true;
			if(valid) {


				//check flag
				if(flag) {

					//Resetea la clave ingresada
					$('#ma-planes-redemcode-input').val("");

					//se muestra mensaje de exito
					var mensaje = "<button type='button' class='close' aria-label='Close' id='ma-mensaje-success-box-btn'>"+
					"<span aria-hidden='true'>"+
					"&times;"+
					"</span>"+
					"</button>"+
					"<strong>"+
					"Mensaje: "+
					"</strong>"+
					"Se ha canjeado con exito el codigo, ahora esta suscrito al plan.";

					$('#load-mensajes-box').addClass("alert alert-success alert-dismissible");
					$('#load-mensajes-box').attr('role', 'alert');
					$('#load-mensajes-box').html(mensaje);

				}  else {
					//hace focus en el imput de redem-code
					setTimeout(function() { $('input[id="ma-planes-redemcode-input"]').focus() }, 1);

				}

			}

	});


//No caracteres especiales

	$('#ma-planes-redemcode-input').on('keypress', function (event) {
	    var regex = new RegExp("^[a-zA-Z0-9ñÑ]+$");
	    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
	    if (!regex.test(key)) {
	       event.preventDefault();
	       return false;
	    }
	});


    /*-- keyup --*/
    $('#ma-planes-redemcode-input').on('keyup', function(e) {

		//Remueve mensajes de error
    	$('#ma-planes-redemcode-error-mensaje').empty();
    	$('#ma-planes-redemcode-group').removeClass("has-feedback has-error");
    	$('#ma-planes-redemcode-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");
    });



});



</script>