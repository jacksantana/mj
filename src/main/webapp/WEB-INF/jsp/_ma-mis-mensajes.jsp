<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">

body{
margin-top:17px;
background:#fff;
}


.btn-danger {
    background-color: #E9573F;
    border-color: #E9573F;
    color: white;
}



.panel-teal .panel-heading {
    background-color: #595959;
    border: 1px solid #fff;
    color: white;
}

	

.panel .panel-heading {
    padding: 3px;
    border-top-right-radius: 3px;
    border-top-left-radius: 3px;
    border-bottom: 1px solid #DDD;
    -moz-border-radius: 0px;
    -webkit-border-radius: 0px;
    border-radius: 0px;
}



.panel .panel-heading .panel-title {
    padding: 10px;
    font-size: 17px;
}



form .form-group {
    position: relative;
    margin-left: 0px !important;
    margin-right: 0px !important;
}



.inner-all {
    padding: 10px;
}

.table-email tr:first-child td {
  border-top: none;
}


.table-email tr td {
  vertical-align: top !important;
}
.table-email tr td:first-child, .table-email tr td:nth-child(2) {
  text-align: center;
  width: 35px;
}
.table-email tr.unread, .table-email tr.selected {
  background-color: #EEEEEE;
}
.table-email .media {
  margin: 0px;
  padding: 0px;
  position: relative;
}
.table-email .media h4 {
  margin: 0px;
  font-size: 14px;
  line-height: normal;
}
.table-email .media-object {
  width: 35px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
}
.table-email .media-meta, .table-email .media-attach {
  font-size: 11px;
  color: #999;

}
.table-email .media-meta {
}
.table-email .media-attach {
  bottom: 0px;
}
.table-email .media-attach i {
  margin-right: 10px;
}
.table-email .media-attach i:last-child {
  margin-right: 0px;
}
.table-email .email-summary {
  margin: 0px 110px 0px 0px;
}
.table-email .email-summary strong {
  color: #333;
}
.table-email .email-summary span {
  line-height: 1;
}
.table-email .email-summary span.label {
  padding: 1px 5px 2px;
}
.table-email .ckbox {
  line-height: 0px;
  margin-left: 8px;
}
.table-email .star {
  margin-left: 6px;
}
.table-email .star.star-checked i {
  color: goldenrod;
}

.nav-email-subtitle {
  font-size: 15px;
  text-transform: uppercase;
  color: #333;
  margin-bottom: 15px;
  margin-top: 30px;
}

.compose-mail {
  position: relative;
  padding: 15px;
}
.compose-mail textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #DDD;
}

.view-mail {
  padding: 10px;
  font-weight: 300;
}

.attachment-mail {
  padding: 10px;
  width: 100%;
  display: inline-block;
  margin: 20px 0px;
  border-top: 1px solid #EFF2F7;
}
.attachment-mail p {
  margin-bottom: 0px;
}
.attachment-mail a {
  color: #32323A;
}
.attachment-mail ul {
  padding: 0px;
}
.attachment-mail ul li {
  float: left;
  width: 200px;
  margin-right: 15px;
  margin-top: 15px;
  list-style: none;
}
.attachment-mail ul li a.atch-thumb img {
  width: 200px;
  margin-bottom: 10px;
}
.attachment-mail ul li a.name span {
  float: right;
  color: #767676;
}

@media (max-width: 640px) {
  .compose-mail-wrapper .compose-mail {
    padding: 0px;
  }
}
@media (max-width: 360px) {
  .mail-wrapper .panel-sub-heading {
    text-align: center;
  }
  .mail-wrapper .panel-sub-heading .pull-left, .mail-wrapper .panel-sub-heading .pull-right {
    float: none !important;
    display: block;
  }
  .mail-wrapper .panel-sub-heading .pull-right {
    margin-top: 10px;
  }
  .mail-wrapper .panel-sub-heading img {
    display: block;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 10px;
  }
  .mail-wrapper .panel-footer {
    text-align: center;
  }
  .mail-wrapper .panel-footer .pull-right {
    float: none !important;
    margin-left: auto;
    margin-right: auto;
  }
  .mail-wrapper .attachment-mail ul {
    padding: 0px;
  }
  .mail-wrapper .attachment-mail ul li {
    width: 100%;
  }
  .mail-wrapper .attachment-mail ul li a.atch-thumb img {
    width: 100% !important;
  }
  .mail-wrapper .attachment-mail ul li .links {
    margin-bottom: 20px;
  }

  .compose-mail-wrapper .search-mail input {
    width: 130px;
  }
  .compose-mail-wrapper .panel-sub-heading {
    padding: 10px 7px;
  }
}



</style>

<div class="container">
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-10">

		    <div class="row">
		        <div class="panel rounded shadow panel-teal">
		            <div class="panel-heading">
		                <div class="pull-left">
		                    <h3 class="panel-title">Bandeja (3)</h3>
		                </div>
		                <div class="clearfix"></div>
		            </div><!-- /.panel-heading -->
		            <div class="panel-sub-heading inner-all">
		                <div class="pull-left">
		                    <ul class="list-inline no-margin">
		                        <li>
		                            <div class="ckbox ckbox-theme">
		                                <input id="checkbox-group" type="checkbox" class="mail-group-checkbox" onClick="toggle(this)">
		                                <label for="checkbox-group"></label>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="btn-group">
		                                <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
		                                    Todos <span class="caret"></span>
		                                </button>
		                                <ul class="dropdown-menu" role="menu">
		                                    <li><a href="#">Todos</a></li>
		                                    <li><a href="#">Leidos</a></li>
		                                    <li><a href="#">No Leidos</a></li>
		                                    <li class="divider"></li>
		                                   	<li><a href="#">Borrados</a></li>

		                                </ul>
		                            </div>
		                        </li>

		                        <li>
		                            <div class="btn-group">
		                                <button type="button" class="btn btn-default btn-sm">Acciones</button>
		                                <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
		                                    <span class="caret"></span>
		                                </button>
		                                <ul class="dropdown-menu" role="menu">
		                                    <li><a href="#"><i class="fa fa-edit"></i> Marcar como leido</a></li>
		                                   	<li><a href="#"><i class="fa fa-edit"></i> Bloquear usuario</a></li>
		                                    <li><a href="#"><i class="fa fa-trash-o"></i> Abandonar causa</a></li>
		                                </ul>
		                            </div>
		                        </li>
		                    </ul>
		                </div>
		                <div class="pull-right">
		                    <ul class="list-inline no-margin">
		                        <li class="hidden-xs"><span class="text-muted">Mostrando 1-10 de 150 causas</span></li>
		                        <li>
		                            <div class="btn-group">
		                                <a href="#" class="btn btn-sm btn-default"><i class="fa fa-angle-left"></i></a>
		                                <a href="#" class="btn btn-sm btn-default"><i class="fa fa-angle-right"></i></a>
		                            </div>
		                        </li>
		                    </ul>
		                </div>
		                <div class="clearfix"></div>
		            </div><!-- /.panel-sub-heading -->
		            <div class="panel-body no-padding">

		                <div class="table-responsive">
		                    <table class="table table-hover table-email">
		                        <tbody>

		                        <tr class="unread" style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>
		                            	<span class="label label-danger">Nuevo</span>		                                    
		                            </td>
		                            <td>
		                                <div class="media">

		                                    <div class="media-body">
		                                        <h4 class="text-primary">Luis A. Marrero </h4>
		                                        <p class="email-summary"> Sed do eiusmod tempor incididunt... </p>
		                                    	<span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>
		                        </tr>

		                        <tr class="unread" style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>
		                            	<span class="label label-danger">Nuevo</span>		                                    
		                            </td>
		                            <td>
		                                <div class="media">
		                                    <div class="media-body">
		                                        <h4 class="text-primary">Barbara Videla</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt... </p>
		                                    	<span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>
		                        </tr>

		                        <tr class="unread" style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>
		                            	<span class="label label-danger">Nuevo</span>		                                    
		                            </td>
		                            <td>
		                                <div class="media">
		                                    <div class="media-body">
		                                        <h4 class="text-primary">Flaca Jurel</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt... </p>
		                                        <span class="media-meta">13-12-2017</span>

											</div>
		                                </div>
		                            </td>
		                        </tr>


		                        <tr style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>

		                            </td>
		                            <td>
		                                <div class="media">
		                                    <div class="media-body">
		                                        <h4 class="text-primary">Unicornio Marilen</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt...</p>
		                                        <span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>
		                        </tr>

		                        <tr style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>

		                            </td>
		                            <td>
		                                <div class="media">
		                                    <div class="media-body">
		                                        <h4 class="text-primary">Guate Chela Chamullera</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt...</p>
		                                        <span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>
		                        </tr>

		                        <tr style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>

		                            </td>
		                            <td>
		                                <div class="media">

		                                    <div class="media-body">
		                                        <h4 class="text-primary">Photoshopera Nicol</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt...</p>
		                                        <span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>
		                        </tr>

		                        <tr style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>

		                            </td>
		                            <td>
		                                <div class="media">

		                                    <div class="media-body">
		                                        <h4 class="text-primary">Cony Mapa Mundo</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt...</p>
		                                        <span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>
		                        </tr>

		                        <tr style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>

		                            </td>
		                            <td>
		                                <div class="media">

		                                    <div class="media-body">
		                                        <h4 class="text-primary">Empana de Pino</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt...</p>
		                                        <span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>
		                        </tr>

		                        <tr style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>

		                            </td>
		                            <td>
		                                <div class="media">

		                                    <div class="media-body">
		                                        <h4 class="text-primary">Brenda Chimbombo</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt...</p>
		                                        <span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>
		                        </tr>

		                        <tr style="cursor: pointer" id="ma-contactar-causa">
		                            <td>
		                                <div class="ckbox ckbox-theme">
		                                    <input id="checkbox2" name="checkbox2" type="checkbox" class="mail-checkbox">
		                                    <label for="checkbox2"></label>
		                                </div>
		                            </td>
		                            <td>

		                            </td>
		                            <td>
		                                <div class="media">

		                                    <div class="media-body">
		                                        <h4 class="text-primary">Vieja</h4>
		                                        <p class="email-summary">Sed do eiusmod tempor incididunt...</p>
		                                        <span class="media-meta">13-12-2017</span>
		                                    </div>
		                                </div>
		                            </td>


		                        </tr>


		                        </tbody>
		                    </table>
		                </div><!-- /.table-responsive -->

		            </div><!-- /.panel-body -->
		        </div><!-- /.panel -->
		    </div>


		</div>
		<div class="col-md-1">
		</div>
	</div>
</div>

<script type="text/javascript">

/*-- SELECCIONAR TODOS LOS MENSAJES --*/

function toggle(source) {
  checkboxes = document.getElementsByName('checkbox2');
  for(var i=0, n=checkboxes.length;i<n;i++) {
    checkboxes[i].checked = source.checked;
  }
}


/* -- CARGAR MODAL DE CHAT -- */


$(document).on('click', '#ma-contactar-causa', function(){

		var jqxhr = $.post( "_ma-chat-modal.html", function(data) {
				//Success
				$("#load-modal-box").html(data);
				})
				  .done(function() {
				  	//Second Success
				  	$("#ma-chat-modal").modal('show'); 
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