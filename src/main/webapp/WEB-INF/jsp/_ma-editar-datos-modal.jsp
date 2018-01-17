<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
		
	</style>


	<!-- MODAL EDITAR MIS DATOS -->
	<div class="modal" id="ma-editar-mis-datos-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">

		      <div class="modal-body">	
					
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="panel panel-default-info">
									<div class="panel-default-heading text-center">
											MIS DATOS
        									<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
										<div class="panel-body">
											<div class="container-fluid">
												<div class="row">
													<div class="col-md-1"></div>
														<div class="col-md-10">

															<form class="form-horizontal">
																<fieldset>	

																	<!-- Region -->
																	<div class="form-group">
																	<div class="col-md-1"></div>
																	  <div class="col-md-10">
																	    <select id="ma-perfil-region" name="ma-perfil-actualizar-region" class="form-control">
										                                     <option value="1">Valparaiso</option>
																	    </select>
																	    <span class="help-block text-right"></span>
																	  </div>
																	  <div class="col-md-1"></div>
																	</div>
																	
																	<!-- Comuna -->
																	<div class="form-group">
																	<div class="col-md-1"></div>
																	  <div class="col-md-10">
																	    <select id="ma-perfil-comuna" name="ma-perfil-actualizar-comuna" class="form-control">
										                                     <option value="1">Viña del mar</option>
																	    </select>
																	    <span class="help-block text-right"></span>
																	  </div>
																	<div class="col-md-1"></div>
																	</div>

																	<!-- Reseña-->
																	<div class="form-group" id="ma-mi-perfil-actualizar-resena-group">
																		  <div class="col-md-1"></div>
																			  <div class="col-md-10">                     
																			    <textarea class="form-control" id="ma-perfil-reseña" maxlength="450" 
																			    rows="3" placeholder="Reseña"></textarea>
																			    <i id="ma-mi-perfil-resena-error-icon"></i>
																			    <span class="help-block text-right" id="ma-mi-perfil-resena-error-mensaje"></span>
																			  </div>
																		  <div class="col-md-1"></div>
																	</div>

																	<!-- Avatar --> 
																	<div class="form-group" id="ma-mi-perfil-avatar-group">
																	<div class="col-md-1"></div>
																	  <div class="col-md-10">
																		<input type="file" accept="image/*" id="ma-mi-perfil-avatar">
																		<i id="ma-mi-perfil-avatar-error-icon"></i>
																	    <span class="help-block text-right" id="ma-mi-perfil-avatar-error-mensaje"></span>
																	  </div>
																	<div class="col-md-1"></div>
																	</div>																	

																	
																	<!-- Button -->
																	<div class="form-group">
																	<div class="col-md-1"></div>
																	  <div class="col-md-10 text-right">
																			<a href="#" class="btn btn-primary" id="ma-mi-perfil-actualizar-btn">Actualizar</a>
														    
																	    </input>
																	  </div>
																	<div class="col-md-1"></div>
																	</div>
																	
																</fieldset>
															</form>													
														</div>
													<div class="col-md-1"></div>
												</div>
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>
		      </div>
	 	 </div>
	</div>


	<script type="text/javascript">



 	$(document).ready(function(){

 		//Banderas
 		var resenaflag = true;
 		var fotoflag = true;

 		/* -- FILESTYLE (BOTON CARGAR FOTO) -- */
 		$(":file").filestyle({buttonBefore: true, iconName: "glyphicon glyphicon-camera" , buttonText: "Seleccione Foto"});
		
	    
 		/*-- BOTON ACTUALIZAR --*/
	    $('#ma-mi-perfil-actualizar-btn').on('click', function(e) {
	    	// Variable bandera
	    		resenaflag = true;

	    	//Remueve mensajes de error
	    	$('#ma-mi-perfil-resena-error-mensaje').empty();
	    	$('#ma-mi-perfil-actualizar-resena-group').removeClass("has-feedback has-error");
	    	$('#ma-mi-perfil-resena-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");


	    	//Si reseña esta vacia entonces..
	    	if (!$.trim($('#ma-perfil-reseña').val())) {
	    		resenaflag = false;
		    	//Agrega clases y estilos para muestra de error
		    	$('#ma-mi-perfil-actualizar-resena-group').addClass("has-feedback has-error");
		    	$('#ma-mi-perfil-resena-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
		    	$('<p>Ingrese una reseña</p>').appendTo('#ma-mi-perfil-resena-error-mensaje');	
			}


			//Se realiza actualizacion de datos
			if(resenaflag && fotoflag) {


				//se muestra mensaje de exito
				var mensaje = "<button type='button' class='close' aria-label='Close' id='ma-mensaje-success-box-btn'>"+
				"<span aria-hidden='true'>"+
				"&times;"+
				"</span>"+
				"</button>"+
				"<strong>"+
				"Mensaje: "+
				"</strong>"+
				"Se han actualizado los datos correctamente.";

				$('#load-mensajes-box').addClass("alert alert-success alert-dismissible");
				$('#load-mensajes-box').attr('role', 'alert');
				$('#load-mensajes-box').html(mensaje);

				//Se cierra modal
				$("#ma-editar-mis-datos-modal .close").click()	
			}

	    });


	    /*-- KEYUP RESEÑA --*/
	    $('#ma-perfil-reseña').on('keyup', function(e) {

	    	//Remueve mensaje de error
	    	$('#ma-mi-perfil-resena-error-mensaje').empty();

	    	//Agrega clases y estilos para muestra de error
	    	$('#ma-mi-perfil-actualizar-resena-group').removeClass("has-feedback has-error");
	    	$('#ma-mi-perfil-resena-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");
	    });


	    /* --SUBIDA DE FOTO DE PERFIL --*/
		document.getElementById("ma-mi-perfil-avatar").onchange = function () {


	    	//Remueve mensajes de error
	    	$('#ma-mi-perfil-avatar-error-mensaje').empty();
	    	$('#ma-mi-perfil-avatar-group').removeClass("has-feedback has-error");
	    	$('#ma-mi-perfil-avatar-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");

	    	if( (this.files[0].size>528385) ||  (this.files[0].type.indexOf("image")==-1) ) {
	    		fotoflag = false;

		    	if(this.files[0].size>528385){

			    	//Agrega clases y estilos para muestra de error
			    	$('#ma-mi-perfil-avatar-group').addClass("has-feedback has-error");
			    	$('#ma-mi-perfil-avatar-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
			    	$('<p>La imagen no debe superar los 500kb</p>').appendTo('#ma-mi-perfil-avatar-error-mensaje');	


			        $(this).wrap('<form>').closest('form').get(0).reset();
			        $(this).unwrap();     
			        return false;
			    }
			    if(this.files[0].type.indexOf("image")==-1){
			    	//Agrega clases y estilos para muestra de error
			    	$('#ma-mi-perfil-avatar-group').addClass("has-feedback has-error");
			    	$('#ma-mi-perfil-avatar-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
			    	$('<p>Archivo invalido</p>').appendTo('#ma-mi-perfil-avatar-error-mensaje');	


			        $(this).wrap('<form>').closest('form').get(0).reset();
			        $(this).unwrap();         
			        return false;
			    }   


	    	} else {
	    		fotoflag = true;
	    	}

		   
		    // read the image file as a data URL.
		    reader.readAsDataURL(this.files[0]);
		};



	});


		
	</script>