<%@page import="br.uninove.model.Usuario"%>
<%@ page import="br.uninove.model.Autor"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="br.uninove.dao.AutorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
   
   	//**** Criando um objeto AutorDAO
   	AutorDAO dao = new AutorDAO();
   
   	//**** Criando uma lista de autores
   	ArrayList<Autor> autores = new ArrayList<>();
   	
   	//**** A nossa lista recebe a lista
   	//**** do métod getAutores() do AutorDAO
   	autores = dao.getAutores();
   	
   
   %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Autores</title>
</head>
<body>
	<%@ include file="../include/hader.jsp"%>

	<div class="container mt-3">
		<div class="alert alert-light" role="alert">
			<div class="row">
				<div class="col-md-9">
					<h2>Cadastro de Autores</h2>
					<%= usuario.getNome() %>
					<a href="SairServlet">Sair</a>
				</div>
				<div class="col-md-3 text-right">
					<a class="btn btn-success" href="novo_autor.jsp"><img
						src="imagens/novo32.png">&nbsp;Novo autor</a>
				</div>
			</div>
		</div>

		<div class="card shadow">
			<div class="card-body">
				<table class="table table-borderless table-hover table-sm">
					<thead>
						<tr>
							<th>Código</th>
							<th>Nome do Autor</th>
							<th>Cidade</th>
							<th></th>
							<th></th>
						<tr>
					</thead>
					<tbody>

						<% 
									for(Autor autor : autores){%>

						<tr>
							<th><%= String.format("%04d", autor.getCodigoAutor()) %></th>
							<td><%= autor.getNomeAutor() %></td>
							<td><%= autor.getCidadeAutor() %></td>
							<td><a class="badge badge-info font-weight-normal"
								href="BuscaAutorServlet?codigo=<%= autor.getCodigoAutor() %>&operacao=editar">Editar</a></td>
							<td><a class="badge badge-danger font-weight-normal"
								href="BuscaAutorServlet?codigo=<%= autor.getCodigoAutor() %>&operacao=excluir">Excluir</a></td>
						</tr>

						<%}%>

					</tbody>
				</table>
			</div>
		</div>

	</div>


</body>
</html>





