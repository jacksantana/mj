<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">

		/* -- MODAL CHAT -- */

		.modal .panel-chat-body {
		    max-height: 500px;
		    overflow-y: auto;
		    padding-bottom: 0px;
		}	

		.media {
			margin-top: 0px;
		}

		.form-group {
			margin-bottom: 0px;
		}

		ul, ol {
			margin-bottom: -17px;
		}

/*

		@media screen and (max-width: 480px){

			.modal-cell-chat-escribir{
			   
			    position:absolute;
			    top:-100%;
			}

		}

*/


	</style>


	<!-- MODAL CHAT -->
	<div class="modal" id="ma-chat-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">

	    <!-- Modal chat-->
		      <div class="modal-body">
					
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="panel panel-default-info">
									<div class="panel-default-heading text-center">
											CHAT
        									<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>

										<ul class="nav nav-tabs">
										  <li role="presentation" class="active" id="ma-chat-modal-chat-li"><a href="#" id="ma-chat-modal-chat-btn">Chat</a></li>
										  <li role="presentation" id="ma-chat-modal-descripcion-li"><a href="#" id="ma-chat-modal-descripcion-btn">Descripcion</a></li>
										</ul>

										<div class="panel-body" id="ma-chat-modal-panel-body">


										<div class="col-md-10" style="display:none" id="ma-chat-modal-descripcion">
											<article class="clearfix">
												<p class="text-justify">
													Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
													Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

												</p>
											</article>	
										</div>											

										<div class="text-center" id="ma-chat-modal-loading" style="display:none">
											<img src="<c:url value="/resources/img/chat-loader.gif"/>" id="loading-indicator"/>
										</div>

											<ul class="media-list" style="display:none">
												<li class="media">
													<div class="text-center" style="display:none">
														<a href="#"><span>Ver mensajes anteriores</span></a>
													</div>
												</li>

												<li class="media">

													<div class="media-body">

														<div class="media">
															<div class="media-body" >
																Donec sit amet ligula enim. Duis vel condimentum massa.
																Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim. 
																Duis vel condimentum massa.
																Donec sit amet ligula enim. Duis vel condimentum massa.
																<br />
															    <small class="text-muted">Alex Deo | 10/11/2017 a las 15:05</small>
																<hr />
															</div>
														</div>
													</div>
												</li>
												 <li class="media">

													<div class="media-body">
														<div class="media">
															<div class="media-body" >
																Donec sit amet ligula enim. Duis vel condimentum massa.	  
																Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim. 
																Duis vel condimentum massa.
																Donec sit amet ligula enim. Duis vel condimentum massa.
																<br />
															   <small class="text-muted">Jhon Rexa | 10/11/2017 a las 15:20</small>
																<hr />
															</div>
														</div>
													</div>

												</li>
												<li class="media">

													<div class="media-body">
														<div class="media">
															<div class="media-body" >
																Donec sit amet ligula enim. Duis vel condimentum massa.	  
																Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim. 
																Duis vel condimentum massa.
																Donec sit amet ligula enim. Duis vel condimentum massa.
																<br />
															   <small class="text-muted">Jhon Rexa | 10/11/2017 a las 18:00</small>
																<hr />
															</div>
														</div>
													</div>													
												</li>
											</ul>

										</div>
									<div class="panel-chat-footer" style="display:none">

										<div class="form-group">
    											<textarea class="form-control" id="ma-chat-modal-enviar-input" placeholder="Ingrese mensaje" rows="3" style="border: none; outline-style:none; box-shadow:none; border-color:transparent;"></textarea>
    											<button class="btn btn-primary" type="button" id="ma-chat-modal-enviar-btn" style="display:none">ENVIAR</button>

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

$(document).ready( function() {

/*-- MODAL LOADING GIF --*/
$('#ma-chat-modal-loading').css('display', '');
$('.media-list').css('display', 'none');
$('.panel-chat-footer').css('display', 'none');
$('#ma-chat-modal-descripcion').css('display', 'none');

setTimeout( function(){
	$('#ma-chat-modal-loading').hide();
	$('.media-list').css('display', '');
	$('.panel-chat-footer').css('display', '');
	/*-- MODAL BOTTOM SCROLL --*/
  	$('#ma-chat-modal-panel-body').scrollTop($('#ma-chat-modal-panel-body').prop("scrollHeight"));
  	$('#ma-chat-modal-enviar-input').focus();

} , 2000);

/*-- FOCUS MENSAJE --*/

/*-- CERRAR MODAL -- */
   $('#ma-chat-modal').on('hidden.bs.modal', function () {

    	    	$('#load-modal-box').empty();
    });


	/*-- CLICK MODAL CHAT -- */


	$('#ma-chat-modal-chat-btn').on('click', function(e) {

		$('#ma-chat-modal-descripcion-li').removeClass("active");
		$('#ma-chat-modal-chat-li').addClass("active");

		$('.media-list').css('display', 'none');
		$('.panel-chat-footer').css('display', 'none');
		$('#ma-chat-modal-descripcion').css('display', 'none');
		$('#ma-chat-modal-loading').css('display', '');


		setTimeout( function(){
			$('#ma-chat-modal-loading').hide();
			$('.media-list').css('display', '');
			$('.panel-chat-footer').css('display', '');
			/*-- MODAL BOTTOM SCROLL --*/
  			$('#ma-chat-modal-panel-body').scrollTop($('#ma-chat-modal-panel-body').prop("scrollHeight"));
  			$('#ma-chat-modal-enviar-input').focus();

		} , 2000);


	});

	/*-- CLICK MODAL DESCRIPCION --*/


	$('#ma-chat-modal-descripcion-btn').on('click', function(e) {

		$('#ma-chat-modal-chat-li').removeClass("active");
		$('#ma-chat-modal-descripcion-li').addClass("active");

		$('.media-list').css('display', 'none');
		$('.panel-chat-footer').css('display', 'none');
		$('#ma-chat-modal-descripcion').css('display', 'none');
		$('#ma-chat-modal-loading').css('display', '');

		setTimeout( function(){
			$('#ma-chat-modal-loading').hide();
			$('#ma-chat-modal-descripcion').css('display', '');

		} , 2000);

	});


	/* -- ESCRIBIENDO MENSAJE--*/
	$('#ma-chat-modal-enviar-input').on('focus keyup change', function(e) {
		$('#ma-chat-modal').addClass("modal-cell-chat-escribir");
	    	 var key = e.which;
	    	 if(key == 13){
	    	 	    $('#ma-chat-modal-enviar-btn').click(); 
	    	 	    return false;
	    	  }
	});


	/* -- ENVIANDO MENSAJE -- */

	$('#ma-chat-modal-enviar-btn').on('click', function(e) {
		
		$('#ma-chat-modal-enviar-input').val('');

	});


	$('#ma-chat-modal-enviar-input').on('focusout', function(e) {
		$('#ma-chat-modal').removeClass("modal-cell-chat-escribir");
	});


	/* CERRAR MODAL CON BACK BUTTON DEL MOBILE */
/*
	$(window).on('popstate', function (event) {  //pressed back button
	    if(event.state!==null) {
  		$('#ma-chat-modal').modal('hide');
    	$('#load-modal-box').empty();	    }
	});

*/
});




</script>