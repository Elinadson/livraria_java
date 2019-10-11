<%@page import="br.uninove.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<%
	Usuario usuario = new Usuario();
	usuario = (Usuario) request.getSession().getAttribute("usuario");

	if (usuario == null) {
		response.sendRedirect("login.html");
	} else {
%>
<div class="row bg-dark styleBorder">
	<div class="container d-flex justify-content-end">
		<span class="color-pd text-left"> <%=usuario.getNome()%> <a
			class="text-white ml-2" href="SairServlet"><i
				class="fa fa-power-off"></i></a>
		</span>
	</div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">
			<h3>Uninove Livros</h3>
		</a>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="autores.jsp">Autores</a></li>
			<li class="nav-item"><a class="nav-link" href="livros.jsp">Livros</a></li>
		</ul>
	</div>
</nav>



<%
	}
%>
