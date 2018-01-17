<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">

/*-- PERFIL CAJA LATERAL -- */

.ma-mi-perfil-box-header {
    background-color: #595959;
    border-top-right-radius: 3px;
    border-top-left-radius: 3px;
}

.ma-mi-perfil-box-title {
    text-align: center;
    padding-top: 10px;
    padding-bottom: 5px;
    color: #FFF;
}

.ma-mi-perfil-box-body{
    margin-top:-10px;    
    background-color: #FFFFFF;
    border: 1px solid #595959; 
    border-bottom-right-radius: 0px;
    border-bottom-left-radius: 0px;
}

.ma-mi-perfil-box-footer {
    display: block;
    padding: 5px;
    color: white;
    background-color: #595959;
    transition: all ease-in-out .3s;
}

.ma-mi-perfil-box-footer:hover {
    text-decoration: none;
    color: white;
    background-color: #bfbfbf;
}


/*-- RANKING DETALLE --*/

a { transition: all .3s ease;-webkit-transition: all .3s ease;-moz-transition: all .3s ease;-o-transition: all .3s ease; }

/* plan */
a.ma-mi-perfil-estadisticas-plan i,.ma-mi-perfil-estadisticas-plan h4.list-group-item-heading { color:#E48A07; }
a.ma-mi-perfil-estadisticas-plan:hover { background-color:#E48A07; }
a.ma-mi-perfil-estadisticas-plan:hover * { color:#FFF; }

/* Estadisticas */
a.ma-mi-perfil-estadisticas-contactos i,.ma-mi-perfil-estadisticas-contactos h4.list-group-item-heading { color:#3b5998; }
a.ma-mi-perfil-estadisticas-contactos:hover { background-color:#3b5998; }
a.ma-mi-perfil-estadisticas-contactos:hover * { color:#FFF; }
/* Le siguen */
a.ma-mi-perfil-estadisticas-siguen i,.ma-mi-perfil-estadisticas-siguen h4.list-group-item-heading { color:#dd4b39; }
a.ma-mi-perfil-estadisticas-siguen:hover { background-color:#dd4b39; }
a.ma-mi-perfil-estadisticas-siguen:hover * { color:#FFF; }



.ma-mi-perfil-ranking-element {
text-align: left;
padding: 0px 15px;
background: #fcfcfc;
border: 0px solid #53a553; 
border-bottom-right-radius: 5px;
border-bottom-left-radius: 5px;
}

.ma-mi-perfil-ranking-element h3.side-title:after {
content: '';
width: 60px;
height: 1px;
background: #ff173c;
display: block;
margin-top: 6px; }

.ma-mi-perfil-ranking-element ul {
margin-bottom: 0; 
}
.ma-mi-perfil-ranking-element li a {
color: #666;
font-size: 14px;
border-bottom: 1px solid #f0f0f0;
line-height: 40px;
display: block;
text-decoration: none; }
.ma-mi-perfil-ranking-element li:last-child a {
border-bottom: 0;
}

/* -- ESTADISTICAS --*/

.list-group {

    border: 0px solid #595959;
    border-top-left-radius: 3px;
    border-top-right-radius:3px;
    border-bottom-left-radius: 3px;
    border-bottom-right-radius:3px;
    margin-bottom: 0px;

}


/*-- PANEL PERFIL -- */

.ma-mi-perfil-panel-footer {
	margin-bottom: 10px;
}

.user-row {
    margin-bottom: 14px;
}

.user-row:last-child {
    margin-bottom: 0;
}

.table-user-information > tbody > tr {
    border-top: 1px solid rgb(221, 221, 221);
}

.table-user-information > tbody > tr:first-child {
    border-top: 0;
}


.table-user-information > tbody > tr > td {
    border-top: 0;
}
.toppad
{
	margin-top:20px;
}

.ma-mi-perfil-panel-heading {
    padding: 6px 15px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
}

.ma-mi-perfil-panel>.ma-mi-perfil-panel-heading {
    color: white;
    background-color: #595959;
    border-color: #bce8f1;
}

.ma-mi-perfil-panel {
	padding-top: 10px;
}

.ma-mi-perfil-panel-body{
    margin-top: 15px;    
    background-color: #FFFFFF;
    border: hidden;

}

/* -- MEDIA QUERY --*/

@media screen and (max-width: 768px){
    
    .img-thumbnail {
    	max-width: 60%;	
    	margin-bottom: 15px;
    }

}
	
</style>

<div class="container">

<div class="row">

		<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="col-md-8">

				      <div class="row">
					   					   
					          <div class="panel ma-mi-perfil-panel">
						            <div class="ma-mi-perfil-panel-heading">
						              <h3 class="panel-title text-center"><i class="fa fa-user" aria-hidden="true"></i></h3>
						            </div>
						            <div class="ma-mi-perfil-panel-body">
						              <div class="row">
						                <div class="col-md-3" align="center"> 
						                	<img src="<c:url value="/resources/img/avatar.png"/>" class="img-thumbnail img-responsive">
						                 </div>						                
						                <div class=" col-md-9"> 
						                  <table class="table table-user-information">
						                    <tbody>
						                      <tr>
						                        <td>Nombres:</td>
						                        <td>Sebastian I.</td>
						                      </tr>
						                      <tr>
						                        <td>Apellidos:</td>
						                        <td>Fuentealba Barrera</td>
						                      </tr>
						                      <tr>
						                        <td>Tipo:</td>
						                        <td>Abogado</td>
						                      </tr>
						                      <tr>
						                        <td>Especialidades:</td>
						                        <td>
						                        	D. Civil
						                        	<br>
						                        	D. Penal
						                        	<br>
						                        	D. Tributario
						                        </td>					                           
						                      </tr>
						                      <tr>
						                        <td>Ubicacion:</td>
						                        <td>Valparaiso / Viña del mar</td>
						                      </tr>
						                   
						                      <tr>
						                        <td>Email:</td>
						                        <td>s.fuentealba87@gmail.com</td>
						                      </tr>		                      
						                      <tr>
						                        <td>Reseña:</td>
						                        <td>
						                        	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
						                        </td>
						                      </tr>
						                     
						                    </tbody>
						                  </table>
						                  
						                </div>
						              </div>

							              <div class="text-center ma-mi-perfil-panel-footer">
							                  <a href="#" class="btn btn-warning" id="ma-editar-datos">Editar perfil</a>
							                  <a href="#" class="btn btn-warning" id="ma-cambiar-contrasena">Cambiar contraseña</a>	
						                  </div>
						            </div>
					          </div>

				      </div>


				</div>
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-12">
							<div class="text-center">
									<div class="ma-mi-perfil-box-header">
							            <span class="group">     
							                <h5 class="ma-mi-perfil-box-title">
							                	<i class="fa fa-bar-chart"></i>
							            	</h5>
							            </span>
						            </div>
							         <div class="ma-mi-perfil-box-body">
										<canvas id="ma-mi-perfil-chart"></canvas>
							        </div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="text-center">
					            <div class="ma-mi-perfil-box-header">
						            <span class="group">     
						                <h5 class="ma-mi-perfil-box-title">
						                <i class="fa fa-id-card-o" aria-hidden="true"></i>
						                 </h5>
						            </span>
					            </div>
						         <div class="ma-mi-perfil-box-body">
									<div class="ma-mi-perfil-ranking-element category">
										<ul class="list-unstyled">
											<li><a href="" title="">Te han evaluado: <span class="pull-right">20</span></a></li>
											<li><a href="" title="">Maximas evaluaciones: <span class="pull-right">4</span></a></li>
											<li><a href="" title="">Promedio general: <span class="pull-right">4.2</span></a></li>		
										</ul>
								   </div>
						         </div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
								<div class="ma-mi-perfil-box-header">
						            <span class="group">     
						                <h5 class="ma-mi-perfil-box-title">
						                <i class="fa fa-address-book-o" aria-hidden="true"></i>
						                 </h5>
						            </span>
					            </div>
						         <div class="ma-mi-perfil-box-body">

								<div class="list-group">
					                <a href="#" class="list-group-item ma-mi-perfil-estadisticas-plan" id="ma-planes-box">
					                    <h3 class="pull-right">
					                        <i class="fa fa-star"></i>
					                    </h3>
					                    <h4 class="list-group-item-heading count">
					                        50
					                    </h4>
					                    <p class="ma-mi-perfil-list-group-item-text">
					                        Vigencia plan</p>
					                </a>
					                <a href="#" class="list-group-item ma-mi-perfil-estadisticas-contactos" id="ma-mis-mensajes-box">
					                    <h3 class="pull-right">
					                        <i class="fa fa-user-circle"></i>
					                    </h3>
					                    <h4 class="list-group-item-heading count">
					                        150
					                    </h4>
					                    <p class="list-group-item-text">
					                        Contactados</p>
					                </a>
					                <a href="#" class="list-group-item ma-mi-perfil-estadisticas-siguen">
					                    <h3 class="pull-right">
					                        <i class="fa fa-users"></i>
					                    </h3>
					                    <h4 class="list-group-item-heading count">
					                        400</h4>
					                    <p class="list-group-item-text">
					                        Seguidores</p>
					                </a>
				            	</div>
									


						         </div>

						
						</div>
					</div>
				</div>				
			</div>
		<div class="col-md-1"></div>

	</div>
</div>
<script type="text/javascript">


$(document).ready( function() {

	/* -- CARGAR MODAL EDITAR DATOS -- */

	$('#ma-editar-datos').on('click', function(e) {

		var jqxhr = $.post( "_ma-editar-datos-modal.html", function(data) {
		//Success
		$("#load-modal-box").html(data);
		})
		  .done(function() {
		  	//Second Success
		  	$("#ma-editar-mis-datos-modal").modal('show'); 
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


	/* -- CARGAR MODAL CAMBIAR CONTRASENA -- */
	$('#ma-cambiar-contrasena').on('click', function(e) {

		var jqxhr = $.post( "_ma-cambiar-contrasena-modal.html", function(data) {
		//Success
		$("#load-modal-box").html(data);
		})
		  .done(function() {
		  	//Second Success
		  	$("#ma-cambiar-contrasena-modal").modal('show'); 
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


	/*-- MI PERFIL GRAFICOS RANKING --*/

	var ctx = document.getElementById('ma-mi-perfil-chart').getContext('2d');
	var chart = new Chart(ctx, {
	    // The type of chart we want to create
	    type: 'horizontalBar',

	    // The data for our dataset
	    data: {
	        labels: ["D. Civil", "D. Penal", "D. Tributario"],
	        datasets: [{
	            backgroundColor: '#f0ad4e',
	            borderColor: 'rgb(255, 99, 132)',
	            data: [3.5, 4.2, 5],
	        }]
	    },

	    // Configuration options go here
	    options: {
	    	    scales: {
		            xAxes: [{
		                ticks: {
	                        min: 1,
	                        max: 5
		                },

		                gridLines: {
	                    display:false
	                	}
		            }],
		            yAxes: [{
		            	barPercentage: 0.6,
		                stacked: true
		            }]
	        },    
	        legend: {
	        display: false
	    	}
	    }
	});

});

//Carga seccion planes
$(document).on('click', '#ma-planes-box', function(){
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

//Carga seccion mensajes
$(document).on('click', '#ma-mis-mensajes-box', function(){
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


</script>