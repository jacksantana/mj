<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<style type="text/css">

		
	</style>

	<!-- MODAL CAMBIAR CONTRASEÑA -->
	<div class="modal" id="ma-cambiar-contrasena-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">

		      <div class="modal-body">	
					
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="panel panel-default-info">
									<div class="panel-default-heading text-center">
											CAMBIAR CONTRASEÑA
        									<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
										<div class="panel-body">
											<div class="container-fluid">
												<div class="row">
													<div class="col-md-1"></div>
														<div class="col-md-10">

															<form class="form-horizontal">
																<fieldset>		
																	<!-- Contraseña actual-->
																	<div class="form-group"
																	id="ma-mi-perfil-contrasena-actual-group">
																		<div class="col-md-1"></div>
																		  <div class="col-md-10">
																		  <input id="ma-mi-perfil-contrasena-actual" type="password" 
																		  placeholder="Contraseña actual" 
																		  class="form-control input-md" maxlength="25">
																		  <i id="ma-mi-perfil-contrasena-actual-error-icon"></i>
																		  <span class="help-block text-right" id="ma-mi-perfil-contrasena-actual-error-mensaje" >
																		  </span>
																			  </div>
																		  <div class="col-md-1"></div>

																	</div>
																	
																	<!-- Nueva contraseña-->
																	<div class="form-group" 
																	id="ma-mi-perfil-contrasena-nueva-group">
																		<div class="col-md-1"></div>																		
																		  <div class="col-md-10">
																		  <input id="ma-mi-perfil-contrasena-nueva" type="password" 
																		  placeholder="Nueva contraseña" 
																		  class="form-control input-md" maxlength="25">
																		  <i id="ma-mi-perfil-contrasena-nueva-error-icon"></i>
																		  <span class="help-block text-right" id="ma-mi-perfil-contrasena-nueva-error-mensaje">
																		  </span>
																		 	</div>
																		<div class="col-md-1"></div>
																	</div>
										
																	<!-- repita nueva contraseña-->
																	<div class="form-group"
																	id="ma-mi-perfil-contrasena-renueva-group">
																		<div class="col-md-1"></div>
																		  <div class="col-md-10">
																		  <input id="ma-mi-perfil-contrasena-renueva" type="password"
																		  placeholder="Repita contraseña" 
																		  class="form-control input-md" maxlength="25">
																		  <i id="ma-mi-perfil-contrasena-renueva-error-icon"></i>
																		  <span class="help-block text-right" id="ma-mi-perfil-contrasena-renueva-error-mensaje">
																		  </span>							    
																		  </div>
																		<div class="col-md-1"></div>
																	</div>
																	
	
																	<!-- btn actualizar-->
																	<div class="form-group">
																		<div class="col-md-1"></div>
																		  <div class="col-md-10 text-right">
																		  							    
																				<a href="#" class="btn btn-primary" 
																				id="ma-mi-perfil-contrasena-actualizar-btn">
																				Actualizar
																				</a>
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


		 		/*-- No ingreso espacio y caracteres especiales ..*/

			$('#ma-mi-perfil-contrasena-actual').on('keypress', function (event) {
			    var regex = new RegExp("^[a-zA-Z0-9ñÑ]+$");
			    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
			    if (!regex.test(key)) {
			       event.preventDefault();
			       return false;
			    }
			});

			$('#ma-mi-perfil-contrasena-nueva').on('keypress', function (event) {
			    var regex = new RegExp("^[a-zA-Z0-9ñÑ]+$");
			    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
			    if (!regex.test(key)) {
			       event.preventDefault();
			       return false;
			    }
			});



			$('#ma-mi-perfil-contrasena-renueva').on('keypress', function (event) {
			    var regex = new RegExp("^[a-zA-Z0-9ñÑ]+$");
			    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
			    if (!regex.test(key)) {
			       event.preventDefault();
			       return false;
			    }
			});


		 		/*-- KEYUPS --*/

		 		// Contraseña actual
			    $('#ma-mi-perfil-contrasena-actual').on('keyup', function(e) {

			    	//Remueve mensaje de error
			    	$('#ma-mi-perfil-contrasena-actual-error-mensaje').empty();

			    	//Agrega clases y estilos para muestra de error
			    	$('#ma-mi-perfil-contrasena-actual-group').removeClass("has-feedback has-error");
				    $('#ma-mi-perfil-contrasena-actual-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");
			    });


		 		//Contraseña nueva
			    $('#ma-mi-perfil-contrasena-nueva').on('keyup', function(e) {

			    	//Remueve mensaje de error
			    	$('#ma-mi-perfil-contrasena-nueva-error-mensaje').empty();

			    	//Agrega clases y estilos para muestra de error
			    	$('#ma-mi-perfil-contrasena-nueva-group').removeClass("has-feedback has-error");
				    $('#ma-mi-perfil-contrasena-nueva-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");
			    });



		 		//Contraseña re-nueva
			    $('#ma-mi-perfil-contrasena-renueva').on('keyup', function(e) {

			    	//Remueve mensaje de error
			    	$('#ma-mi-perfil-contrasena-renueva-error-mensaje').empty();

			    	//Agrega clases y estilos para muestra de error
			    	$('#ma-mi-perfil-contrasena-renueva-group').removeClass("has-feedback has-error");
				    $('#ma-mi-perfil-contrasena-renueva-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");
			    });





				/*-- BOTON ACTUALIZAR --*/
			    $('#ma-mi-perfil-contrasena-actualizar-btn').on('click', function(e) {

			    	//** INICIALIZACION 

				    	//Remueve mensajes de error
				    	$('#ma-mi-perfil-contrasena-actual-error-mensaje').empty();
				    	$('#ma-mi-perfil-contrasena-nueva-error-mensaje').empty();
				    	$('#ma-mi-perfil-contrasena-renueva-error-mensaje').empty();

				    	$('#ma-mi-perfil-contrasena-actual-group').removeClass("has-feedback has-error");
				    	$('#ma-mi-perfil-contrasena-nueva-group').removeClass("has-feedback has-error");
				    	$('#ma-mi-perfil-contrasena-renueva-group').removeClass("has-feedback has-error");

				    	$('#ma-mi-perfil-contrasena-actual-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");
				    	$('#ma-mi-perfil-contrasena-nueva-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");
				    	$('#ma-mi-perfil-contrasena-renueva-error-icon').removeClass("glyphicon glyphicon-remove form-control-feedback");


				    //** CAMPOS VACIOS

				    if((!$.trim($('#ma-mi-perfil-contrasena-actual').val())) || (!$.trim($('#ma-mi-perfil-contrasena-nueva').val()))
				    	|| (!$.trim($('#ma-mi-perfil-contrasena-renueva').val()))){


						    	//Si contraseña actual esta vacia entonces..
						    	if (!$.trim($('#ma-mi-perfil-contrasena-actual').val())) {

							    	//Agrega clases y estilos para muestra de error
							    	$('#ma-mi-perfil-contrasena-actual-group').addClass("has-feedback has-error");
							    	$('#ma-mi-perfil-contrasena-actual-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
							    	$('<p>Debe ingresar su contraseña</p>').appendTo('#ma-mi-perfil-contrasena-actual-error-mensaje');		
								}

								//Si contraseña nueva esta vacia entonces..
						    	if (!$.trim($('#ma-mi-perfil-contrasena-nueva').val())) {

							    	//Agrega clases y estilos para muestra de error
							    	$('#ma-mi-perfil-contrasena-nueva-group').addClass("has-feedback has-error");
							    	$('#ma-mi-perfil-contrasena-nueva-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
							    	$('<p>Debe ingresar nueva contraseña</p>').appendTo('#ma-mi-perfil-contrasena-nueva-error-mensaje');

							    	
								}

								//Si contraseña renueva esta vacia entonces..
						    	if (!$.trim($('#ma-mi-perfil-contrasena-renueva').val())) {

						    		//Agrega clases y estilos para muestra de error
							    	$('#ma-mi-perfil-contrasena-renueva-group').addClass("has-feedback has-error");
							    	$('#ma-mi-perfil-contrasena-renueva-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
							    	$('<p>Debe reingresar nueva contraseña</p>').appendTo('#ma-mi-perfil-contrasena-renueva-error-mensaje');
							    		
								}

					}



					else {


						//Si contraseña actual no es valida
						var contrasenaOk = true;


						if( (contrasenaOk == false) || ( ($('#ma-mi-perfil-contrasena-nueva').val().length >= 1)
						&& ($('#ma-mi-perfil-contrasena-nueva').val().length < 8))) {

							if(contrasenaOk == false) {

								//Agrega clases y estilos para muestra de error
								$('#ma-mi-perfil-contrasena-actual-group').addClass("has-feedback has-error");
								$('#ma-mi-perfil-contrasena-actual-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
								$('<p>Su contraseña es incorrecta</p>').appendTo('#ma-mi-perfil-contrasena-actual-error-mensaje');	
							} 


							//Si contraseña nueva no tiene el minimo permitido

							if( ($('#ma-mi-perfil-contrasena-nueva').val().length >= 1) && ($('#ma-mi-perfil-contrasena-nueva').val().length < 8) ) {

								//Agrega clases y estilos para muestra de error
						    	$('#ma-mi-perfil-contrasena-nueva-group').addClass("has-feedback has-error");
						    	$('#ma-mi-perfil-contrasena-nueva-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
						    	$('<p>El largo minimo debe ser 8 caracteres</p>').appendTo('#ma-mi-perfil-contrasena-nueva-error-mensaje');
							} 


						}

						else {

							//Si la contraseña nueva  no coincide con la re-ingresada

								if ($('#ma-mi-perfil-contrasena-nueva').val() != $('#ma-mi-perfil-contrasena-renueva').val()) {

									//Agrega clases y estilos para muestra de error
							    	$('#ma-mi-perfil-contrasena-nueva-group').addClass("has-feedback has-error");
							    	$('#ma-mi-perfil-contrasena-nueva-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
							    	$('<p>Contraseñas no coinciden</p>').appendTo('#ma-mi-perfil-contrasena-nueva-error-mensaje');

							    	//Agrega clases y estilos para muestra de error
							    	$('#ma-mi-perfil-contrasena-renueva-group').addClass("has-feedback has-error");
							    	$('#ma-mi-perfil-contrasena-renueva-error-icon').addClass("glyphicon glyphicon-remove form-control-feedback");
							    	$('<p>Contraseñas no coinciden</p>').appendTo('#ma-mi-perfil-contrasena-renueva-error-mensaje');

								} 

								else {
									//Submitear

									//se muestra mensaje de exito
													var mensaje = "<button type='button' class='close' aria-label='Close' id='ma-mensaje-success-box-btn'>"+
													"<span aria-hidden='true'>"+
													"&times;"+
													"</span>"+
													"</button>"+
													"<strong>"+
													"Mensaje: "+
													"</strong>"+
													"Se ha cambiado la contraseña correctamente.";

													$('#load-mensajes-box').addClass("alert alert-success alert-dismissible");
													$('#load-mensajes-box').attr('role', 'alert');
													$('#load-mensajes-box').html(mensaje);

													//Se cierra modal
													$("#ma-cambiar-contrasena-modal .close").click()	


								}

						}

					}
						
	    		});


	    	});

	</script>