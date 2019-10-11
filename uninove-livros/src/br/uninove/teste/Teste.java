package br.uninove.teste;

import br.uninove.dao.AutorDAO;
import br.uninove.dao.Conexao;
import br.uninove.model.Autor;
import br.uninove.model.Livro;

public class Teste {

	public static void main(String[] args) {
		
		
		Autor a = new Autor();
		
		a.setCodigoAutor(1);
		a.setNomeAutor("Machado de Assis da Silva");
		a.setCidadeAutor("Rio de Janeiro");
		
		AutorDAO dao = new AutorDAO(a);
		
		dao.atualizarAutor();
		
		System.out.println(a.getNomeAutor());

	}

}
