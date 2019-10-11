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
					<h2>Cadastro de Autores</h2>
					<h6>Digite os dados do novo autor.</h6>
				</div>
				<div class="col-md-3 text-right"></div>
			</div>
		</div>

		<div class="card shadow">
			<div class="card-body">
				<form method="POST" action="GravarAutorServlet">
					<div class="form-group">
						<label for="txt_nome_autor">Nome do autor:</label> <input
							type="text" class="form-control" name="txt_nome_autor"
							id="txt_nome_autor" placeholder="Digite o nome do autor...">
					</div>
					<div class="form-group">
						<label for="txt_cidade_autor">Cidade do Autor:</label> <input
							type="text" class="form-control" name="txt_cidade_autor"
							id="txt_cidade_autor" placeholder="Digite a cidade do autor...">
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success"
							id="formGroupExampleInput2" value="Gravar autor"> <a
							class="btn btn-warning" href="autores.jsp">Cancelar</a>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>
