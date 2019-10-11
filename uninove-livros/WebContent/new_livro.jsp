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
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="index.html"> Uninove Livros </a>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="autores.jsp">Autores</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="livros.jsp">Livros</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container mt-3">
		<div class="alert alert-success" role="alert">
			<div class="row">
				<div class="col-md-9">
					<h2>Cadastro de Livros</h2>
					<h6>Digite os dados do novo Livro.</h6>
				</div>
				<div class="col-md-3 text-right"></div>
			</div>
		</div>

		<div class="card shadow">
			<div class="card-body">
				<form method="POST" action="GravarLivroServlet">
					<div class="form-group">
						<label for="txt_titulo_livro">Nome do Livro:</label> <input
							type="text" class="form-control" name="txt_titulo_livro"
							id="txt_titulo_livro" placeholder="Digite o nome do Livro...">
					</div>
					<div class="form-group">
						<label for="txt_edicao_livro">Ano do Livro</label> <input
							type="text" class="form-control" name="txt_edicao_livro"
							id="txt_edicao_livro" placeholder="Digite o ano do livro...">
					</div>
					<%
						for (Autor autor : autores) {
					%>
					<label class="mr-sm-2" for="inlineFormCustomSelect">Autor</label> <select
						class="custom-select mr-sm-2" id="inlineFormCustomSelect">
						<option selected>Selecione o Autor</option>
						<option value="1"><%=autor.getNomeAutor()%></option>

						<%
							}
						%>
					</select>


					<div class="form-group">
						<input type="submit" class="btn btn-success"
							id="formGroupExampleInput2" value="Gravar livro"> <a
							class="btn btn-warning" href="livros.jsp">Cancelar</a>
					</div>
				</form>



			</div>
		</div>

	</div>
</body>
</html>


