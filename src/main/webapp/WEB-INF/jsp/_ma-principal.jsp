<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	
/* -- MAQUETADO COLUMNAS LATERALES --*/

.ma-col-lateral-1{
		margin-top: 20px;
        padding-bottom: 10px;

}

.ma-col-lateral-3{
        margin-top: 20px;
        padding-bottom: 10px;
}

.ma-affix-1 {
        position: fixed;
        width: 17%;
}

.ma-affix-2 {
        position: fixed;
        width: 18%;
}


.ma-affix-3 {
        position: fixed;
}

/*-- SUB-MURO POST --*/

.post {
	padding-bottom:20px;
	margin-bottom:20px;
	border-bottom:1px solid #999;
    width: 94%;

}

.post .post-title {
	color:#333;
	font-size: 20px;
}

.post .post-usuario {
    margin-bottom: 3px;
}


.post .post-usuario .post-usuario-categoria-title{
    font-size: 13px;
    font-weight: 700;
}

.post .post-usuario .post-usuario-categoria {
    font-size: 12px;
}

.post .post-usuario .post-usuario-fecha {
    position: absolute;
    right: 56px;
    font-size: 12px;

}

.post .post-usuario .post-usuario-fecha-title{
    position: absolute;
    right: 120px;
    font-size: 13px;
    font-weight: 700;
}

.post .post-ubicacion {
    padding-bottom: 0px;
    margin-bottom: 5px;

}

.post .post-ubicacion .post-ubicacion-title {
    font-size: 13px;
    font-weight: 700;
}

.post .post-ubicacion .post-ubicacion-lugar {
    font-size: 12px;
}

.post .contenedor-botones {
	width:100%;
}


/* -- SUB-MURO BUSCADOR CAUSAS -- */

.nav-pills .buscador-menu {
	padding-top: 0px;
}

.nav-pills > li > a {
-webkit-border-radius: 0;
-moz-border-radius: 0;
border-radius: 0;
border-radius: 0 !important;
}

.nav-stacked>li+li {
margin-top: 0px;
margin-left: 0;

}

.nav-pills .buscador-title {
	color: white;
    font-weight: 500;
    font-size: 15px;
    position: relative;
    text-shadow: none;
}


.nav-pills .busqueda-causas {
    background-color: #595959;
}

.nav-pills .busqueda-causas:hover {
    background-color: #595959;
}



/*-- SUB-MURO PANEL INFO --*/

.shape{    
    border-style: solid; border-width: 0 70px 40px 0; float:right; height: 0px; width: 0px;
    -ms-transform:rotate(360deg); /* IE 9 */
    -o-transform: rotate(360deg);  /* Opera 10.5 */
    -webkit-transform:rotate(360deg); /* Safari and Chrome */
    transform:rotate(360deg);
}
.offer{
    background:#fff; border:1px solid #ddd; margin: 15px 0; overflow:hidden;
}
.shape {
    border-color: rgba(255,255,255,0) #ffad33 rgba(255,255,255,0) rgba(255,255,255,0);
}
.offer-radius{
    border-radius:7px;
}
.offer-success { border-color: #595959; }
.offer-success .shape{
    border-color: transparent #595959 transparent transparent;
}

.shape-text{
    color:#fff; font-size:11px; font-weight:bold; position:relative; right:-40px; top:3px; white-space: nowrap;
    -ms-transform:rotate(30deg); /* IE 9 */
    -o-transform: rotate(360deg);  /* Opera 10.5 */
    -webkit-transform:rotate(30deg); /* Safari and Chrome */
    transform:rotate(30deg);
}   
.offer-content{
    padding:0 20px 10px;
}


/* -- SUB-MURO PANEL ESTADISTICAS --*/

a { transition: all .3s ease;-webkit-transition: all .3s ease;-moz-transition: all .3s ease;-o-transition: all .3s ease; }

/* plan */
a.estadisticas-plan i,.estadisticas-plan h4.list-group-item-heading { color:#E48A07; }
a.estadisticas-plan:hover { background-color:#E48A07; }
a.estadisticas-plan:hover * { color:#FFF; }

/* Estadisticas */
a.estadisticas-contactos i,.estadisticas-contactos h4.list-group-item-heading { color:#3b5998; }
a.estadisticas-contactos:hover { background-color:#3b5998; }
a.estadisticas-contactos:hover * { color:#FFF; }
/* Google */
a.estadisticas-siguen i,.estadisticas-siguen h4.list-group-item-heading { color:#dd4b39; }
a.estadisticas-siguen:hover { background-color:#dd4b39; }
a.estadisticas-siguen:hover * { color:#FFF; }


.list-group {
    border: 1px solid #595959;
    border-top-left-radius: 3px;
    border-top-right-radius:3px;
    border-bottom-left-radius: 3px;
    border-bottom-right-radius:3px;
}

/*-- SUB-MURO RANKING PANEL --*/

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



@media(max-width:992px) {

    .ma-affix-1 {
        position: static;
        width: 100%;
    }

}

</style>


			<div class="col-md-3">

				<div class="ma-affix-1">

					<div class="ma-col-lateral-1">

						<ul class="nav nav-pills nav-stacked buscador-menu">
							<li role="presentation" class="busqueda-causas"><a href="#" class="buscador-title text-center">Buqueda</a></li>
							<li>
								<form class="form-horizontal">
									<fieldset>
										<!-- Select Basic -->
										<div class="form-group">
										  <div class="col-md-12">
										    <select id="cba-region" name="cba-region" class="form-control">
										      <option value="1">Santiago</option>
										      <option value="2">Valparaiso</option>
										      <option value="3">Arica y Parinacota</option>
										      <option value="4">Tarapaca</option>
										      <option value="5">Coquimbo</option>
										      <option value="6">Ohiggins</option>
										      <option value="7">Araucania</option>
										      <option value="9">Los Lagos</option>
										      <option value="10">Los Rios</option>
										      <option value="11">Magallanes</option>
										    </select>
										  </div>
										</div>
									</fieldset>
								</form>	
							</li>
						</ul>			
					</div>

					<div class="ma-col-lateral-1 hidden-sm hidden-xs">
							<div class="offer offer-success">
								<div class="shape">
									<div class="shape-text">
										Info								
									</div>
								</div>
								<div class="offer-content">						
									<img src="<c:url value="/resources/img/membresia.jpg"/>" class="center-block img-responsive">
								</div>
							</div>
					</div>


				</div>

			</div>


			<div class="posts col-md-9">

				<article class="post clearfix">
					<h2 class="post-title">
						Luis A. Marrero
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-primary" id="ma-contactar-causa">Contactar</a>
					</div>
				</article>	

				<article class="post clearfix">
					<h2 class="post-title">
						Barbara Videla
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-primary" id="ma-contactar-causa">Contactar</a>
					</div>
				</article>

				<article class="post clearfix">
					<h2 class="post-title">
						Flaca Jurel
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-primary" id="ma-contactar-causa">Contactar</a>
					</div>
				</article>

				<article class="post clearfix">
					<h2 class="post-title">
						Unicornio Marilen
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-primary" id="ma-contactar-causa">Contactar</a>
					</div>
				</article>

				<article class="post clearfix">
					<h2 class="post-title">
						Guate Chela Chamullera
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-warning" id="ma-contactar-causa">Contactado</a>
					</div>
				</article>

				<article class="post clearfix">
					<h2 class="post-title">
						Photoshopera Nicol
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-warning" id="ma-contactar-causa">Contactado</a>
					</div>
				</article>

				<article class="post clearfix">
					<h2 class="post-title">
						Cony Mapa Mundo
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-warning" id="ma-contactar-causa">Contactado</a>
					</div>
				</article>

				<article class="post clearfix">
					<h2 class="post-title">
						Empana de Pino
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-primary" id="ma-contactar-causa">Contactar</a>
					</div>
				</article>

				<article class="post clearfix">
					<h2 class="post-title">
						Brenda Chimbombo
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-warning" id="ma-contactar-causa">Contactado</a>
					</div>
				</article>

				<article class="post clearfix">
					<h2 class="post-title">
						Vieja
					</h2>
					<p class="post-usuario">
						<span class="post-usuario-categoria-title">
							Categoria:
						</span>
						<span class="post-usuario-categoria">
							Derecho Civil
						</span>
						<span class="post-usuario-fecha-title">
							Fecha:
						</span>
						<span class="post-usuario-fecha">
							26/01/2018
						</span>  
					</p>
					<p class="post-ubicacion">
						<span class="post-ubicacion-title">
							Ubicacion: 
						</span>
						<span class="post-ubicacion-lugar">
							Valparaiso / Vina del mar
						</span>
					</p>
					<p class="post-contenido text-justify">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

					</p>
					<div class="contenedor-botones">
						<a href="#" class="btn btn-primary" id="ma-contactar-causa">Contactar</a>
					</div>
				</article>				

				<nav>
					<div class="text-center">
						<ul class="pagination">
							<li class="disabled"><a href="#">&laquo;<span class="sr-only">Anterior</span></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">&raquo;<span class="sr-only">Siguiente</span></a></li>
						</ul>
					</div>
				</nav>	
			</div>


			
			<div class="col-md-3" style="display: none">
					
				<div class="ma-affix-2">

					<div class="ma-col-lateral-3 hidden-sm hidden-xs">
							<div class="text-center">
									<div class="ma-mi-perfil-box-header">
							            <span class="group">     
							                <h5 class="ma-mi-perfil-box-title">
							                	<i class="fa fa-bar-chart"></i>
							            	</h5>
							            </span>
						            </div>
							         <div class="ma-mi-perfil-box-body">
										<canvas id="myChart"></canvas>
							        </div>
							</div>
					</div>


					<div class="ma-col-lateral-3 hidden-sm hidden-xs">
						<div class="list-group">
			                <a href="#" class="list-group-item estadisticas-plan" id="ma-planes-box">
			                    <h3 class="pull-right">
			                        <i class="fa fa-star"></i>
			                    </h3>
			                    <h4 class="list-group-item-heading count">
			                        50
			                    </h4>
			                    <p class="list-group-item-text">
			                        Vigencia plan</p>
			                </a>
			                <a href="#" class="list-group-item estadisticas-contactos" id="ma-mis-mensajes-box">
			                    <h3 class="pull-right">
			                        <i class="fa fa-user-circle"></i>
			                    </h3>
			                    <h4 class="list-group-item-heading count">
			                        150
			                    </h4>
			                    <p class="list-group-item-text">
			                        Contactados</p>
			                </a>
			                <a href="#" class="list-group-item estadisticas-siguen">
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



<script type="text/javascript">

	$(document).ready( function() {





		/*-- GRAFICOS RANKING DESKTOP --*/

		var ctx = document.getElementById('myChart').getContext('2d');
			var chart = new Chart(ctx, {
			    // The type of chart we want to create
			    type: 'horizontalBar',

			    // The data for our dataset
			    data: {
			        labels: ["D. Civil", "D. Penal", "D. Tributario"],
			        datasets: [{
			            backgroundColor: '#f0ad4e',
			            borderColor: 'rgb(255, 99, 132)',
			            data: [3.5, 3, 5],
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
				                stacked: true
				            }]
			        },    
			        legend: {
			        display: false
			    	}
			    }
			});


	});


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