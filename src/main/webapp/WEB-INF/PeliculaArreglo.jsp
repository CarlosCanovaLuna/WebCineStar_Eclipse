<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%String[] Pelicula = (String[]) session.getAttribute("data"); %> 
<br/><h1>Cartelera</h1><br/>
<div class="contenido-pelicula">
	<div class="datos-pelicula">
		<h2><%= Pelicula[1]%></h2>
		<p><%= Pelicula[10]%></p>
		<br/>
		<div class="tabla">
			<div class="fila">
				<div class="celda-titulo">Título Original :</div>
				<div class="celda"><%= Pelicula[1]%></div>
			</div>
			<div class="fila">
				<div class="celda-titulo">Estreno :</div>
				<div class="celda"><%=Pelicula[2]%></div>
			</div>
			<div class="fila">
				<div class="celda-titulo">Género :</div>
				<div class="celda"><%=Pelicula[4]%></div>
			</div>
			<div class="fila">
				<div class="celda-titulo">Director :</div>
				<div class="celda"><%=Pelicula[3]%></div>
			</div>
			<div class="fila">
				<div class="celda-titulo">Reparto :</div>
				<div class="celda"><%=Pelicula[9]%></div>
			</div>
		</div>
	</div>
	<img src="img/pelicula/<%=Pelicula[0]%>.jpg" width="160" height="226"><br/><br/>
</div>
<div class="pelicula-video">
	<embed src="http://www.youtube.com/v/<%=Pelicula[8]%>" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="580" height="400">
</div>
