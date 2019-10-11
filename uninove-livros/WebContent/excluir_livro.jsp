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
		<div class="alert alert-danger" role="alert">
			<div class="row">
				<div class="col-md-9">
					<h2>Excluir Livro</h2>
					<h6>ATENÇÃO! Ao confirmar a exclusão esta ação não poderá ser
						desfeita.</h6>
				</div>
				<div class="col-md-3 text-right"></div>
			</div>
		</div>

		<div class="card shadow">
			<div class="card-body">
				<form method="POST" action="ExcluirLivroServlet">
					<input type="hidden" name="txt_codigo_livro"
						value="<%= livro.getCodigoLivro() %>" />
					<div class="form-group">
						<label for="txt_nome_livro">Nome do livro:</label> <input
							type="text" class="form-control" name="txt_titulo_livro"
							id="txt_titulo_livro" value="<%= livro.getTituloLivro() %>">
					</div>
					<div class="form-group">
						<label for="txt_cidade_livro">Cidade do Livro:</label> <input
							type="text" class="form-control" name="txt_edicao_livro"
							id="txt_edicao_livro" value="<%= livro.getAnoEdicao() %>">
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-danger"
							id="formGroupExampleInput2" value="Excluir livro"> <a
							class="btn btn-warning" href="livros.jsp">Cancelar</a>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>
