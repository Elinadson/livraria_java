<%@ page import="br.uninove.model.Livro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%

	Livro livro = new Livro();
	livro = (Livro) request.getAttribute("livro");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Livroes</title>
</head>
<body>

	<%@ include file="../include/hader.jsp" %>

	<div class="container mt-3">
		<div class="alert alert-warning" role="alert">
			<div class="row">
				<div class="col-md-9">
					<h2>Atualização de Livros</h2>
					<h6>Mantenha os dados do livro atualizado.</h6>
				</div>
				<div class="col-md-3 text-right"></div>
			</div>
		</div>

		<div class="card shadow">
			<div class="card-body">
				<form method="POST" action="AtualizaLivroServlet">
					<input type="hidden" name="txt_codigo_livro"
						value="<%= livro.getCodigoLivro() %>" />
					<div class="form-group">
						<label for="txt_titulo_livro">Nome do livro:</label> <input
							type="text" class="form-control" name="txt_titulo_livro"
							id="txt_titulo_livro" value="<%= livro.getTituloLivro() %>">
					</div>
					<div class="form-group">
						<label for="txt_edicao_livro">Ano de Edição do Livro:</label> <input
							type="text" class="form-control" name="txt_edicao_livro"
							id="txt_edicao_livro" value="<%= livro.getAnoEdicao() %>">
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success"
							id="formGroupExampleInput2" value="Atualizar livro"> <a
							class="btn btn-warning" href="livroes.jsp">Cancelar</a>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>
