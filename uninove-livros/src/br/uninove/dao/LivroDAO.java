package br.uninove.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import br.uninove.model.Livro;

public class LivroDAO {

	private Livro livro;
	
	public LivroDAO() {}
	
	public LivroDAO(Livro livro) {
		this.livro = livro;
	}
	
	public ArrayList<Livro> getLivros() {
		
		
		String consulta = "SELECT * FROM tbl_livro";
		
		
		ResultSet rs = null;
		
		try {
			
		
			PreparedStatement stm = Conexao.getConexao().prepareStatement(consulta);
			rs = stm.executeQuery();
			
			
			ArrayList<Livro> livros = new ArrayList<>();
			Livro livro;
			
			while (rs.next()) {
				livro = new Livro();
				livro.setCodigoLivro(rs.getInt("codigo_livro"));
				livro.setTituloLivro(rs.getString("titulo_livro"));
				livro.setAnoEdicao(rs.getString("edicao_livro"));
				livros.add(livro);
			}
			
			return livros;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public Livro getLivro(int codigoLivro) {
		
	
		String consulta = "SELECT * FROM tbl_livro WHERE codigo_livro = ?";
		
		
		ResultSet rs = null;
		
		try {
			
		
			PreparedStatement stm = Conexao.getConexao().prepareStatement(consulta);
			stm.setInt(1, codigoLivro);
			rs = stm.executeQuery();
			
		
			Livro livro = null;
			
			if (rs.next()) {
				livro = new Livro();
				livro.setCodigoLivro(rs.getInt("codigo_livro"));
				livro.setTituloLivro(rs.getString("titulo_livro"));
				livro.setAnoEdicao(rs.getString("edicao_livro"));
			}
			
			return livro;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public void gravarLivro() {
		
		String sql = "INSERT INTO tbl_livro "
				+ "(titulo_livro, edicao_livro) "
				+ "VALUES (?, ?)";
		
		try {
			PreparedStatement stm = Conexao.getConexao().prepareStatement(sql);
			stm.setString(1, livro.getTituloLivro());
			stm.setString(2, livro.getAnoEdicao());
			stm.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public void atualizarLivro() {
		
		String sql = "UPDATE tbl_livro "
				+ "SET titulo_livro = ?, edicao_livro = ? "
				+ "WHERE codigo_livro = ?";
		
		try {
			PreparedStatement stm = Conexao.getConexao().prepareStatement(sql);
			stm.setString(1, livro.getTituloLivro());
			stm.setString(2, livro.getAnoEdicao());
			stm.setInt(3, livro.getCodigoLivro());
			stm.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public void excluirLivro() {
		
		String sql = "DELETE FROM tbl_livro "
				+ "WHERE codigo_livro = ?";
		
		try {
			PreparedStatement stm = Conexao.getConexao().prepareStatement(sql);
			stm.setInt(1, livro.getCodigoLivro());
			stm.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}











