<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Autores</title>
</head>
<body>
		<%@ include file="../include/hader.jsp" %>

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
