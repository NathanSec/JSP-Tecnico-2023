package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {

	/* Módulo de conexão */

	// Parâmetros de conexão

	private String driver = "com.mysql.cj.jdbc.Driver"; // padrão do MySQL
	private String url = "jdbc:mysql://127.0.0.1:3306/dbagenda?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "admin";

	// Métodos de conexão

	private Connection conectar() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			return con;

		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	/*
	 * TESTE DE CONEXÃO
	 * 
	 * 
	 * public void testeConexao() { try { Connection con = conectar();
	 * System.out.println(con); con.close();
	 * 
	 * } catch (Exception e) { System.out.println(e); }
	 * 
	 * }
	 */

	/** CRUD CREATE **/

	public void inserirContato(JavaBeans contato) {

		String create = "insert into contatos (nome,fone,email)values(?,?,?)";
		try {
			// abrir a conexão com o banco de dados
			// Default
			Connection con = conectar();
			// Preparar a query para execução no banco de dados
			PreparedStatement pst = con.prepareStatement(create);
			// Substituir os parâmetros (?) pelo conteúdo das variaveis
			pst.setString(1, contato.getNome());
			pst.setString(2, contato.getFone());
			pst.setString(3, contato.getEmail());
			// Executar a Query
			pst.executeUpdate();
			// Encerrar a conexão
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

	}

	/** CRUD READ **/
	public ArrayList<JavaBeans> listarContatos() {

		// Criar um objeto para acesasr a classe JavaBeans

		ArrayList<JavaBeans> contatos = new ArrayList();
		String read = "select * from contatos order by nome";
		try {
			// Abrir a conexão com o banco
			Connection con = conectar();
			// Preparar a query para a execução no banco de dados
			PreparedStatement pst = con.prepareStatement(read);
			// Armazenar o retorno do BD temporariamente em um objeto
			ResultSet rs = pst.executeQuery();

			// o laço abaixo será executsado enquanto houver contatos
			while (rs.next()) {

				// variáveis de apoio que recebem os dados do BD

				String idcon = rs.getString(1);
				String nome = rs.getString(2);
				String fone = rs.getString(3);
				String email = rs.getString(4);

				// Popular o arraylist
				contatos.add(new JavaBeans(idcon, nome, fone, email));
				}
			con.close();
			return contatos;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
