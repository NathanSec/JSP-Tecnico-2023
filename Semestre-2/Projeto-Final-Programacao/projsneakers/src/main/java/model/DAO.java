package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {
	/** Módulo de conexão **/
	// Parâmetros de conexão
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/dbsneakers?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "admin";

	// Método de conexão
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

	/** CRUD CREATE **/
	public void inserirSneaker(JavaBeans sneaker) {
	    String create = "insert into sneakers(modelo, collab, cor, imagem) values (?, ?, ?, ?)";
	    try {
	        Connection con = conectar();
	        PreparedStatement pst = con.prepareStatement(create);
	        pst.setString(1, sneaker.getModelo());
	        pst.setString(2, sneaker.getCollab());
	        pst.setString(3, sneaker.getCor());
	        pst.setString(4, sneaker.getImagem());
	        pst.executeUpdate();
	        con.close();
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	}

	/** CRUD READ **/
	public ArrayList<JavaBeans> listarSneakers() {
		// Criando um objeto para acessar a classe JavaBeans
		ArrayList<JavaBeans> sneakers = new ArrayList<>();
		String read = "select * from sneakers order by modelo";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read);
			ResultSet rs = pst.executeQuery();
			// o laço abaixo será executado enquanto houver contatos
			while (rs.next()) {
				// variáveis de apoio que recebem os dados do banco
				String id = rs.getString(1);
				String modelo = rs.getString(2);
				String collab = rs.getString(3);
				String cor = rs.getString(4);
				String imagem = rs.getString(5);
				// populando o ArrayList
				sneakers.add(new JavaBeans(id, modelo, collab, cor, imagem));
			}
			con.close();
			return sneakers;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	/** CRUD UPDATE **/
	// selecionar o contato
	public void selecionarSneaker(JavaBeans sneaker) {
		String read2 = "select * from sneakers where id = ?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read2);
			pst.setString(1, sneaker.getId());
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				// setar as variáveis JavaBeans
				sneaker.setId(rs.getString(1));
				sneaker.setModelo(rs.getString(2));
				sneaker.setCollab(rs.getString(3));
				sneaker.setCor(rs.getString(4));
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// editar o contato
	public void alterarSneaker(JavaBeans sneaker) {
	    String update = "update sneakers set modelo=?, collab=?, cor=?, imagem=? where id=?";
	    try {
	        Connection con = conectar();
	        PreparedStatement pst = con.prepareStatement(update);
	        pst.setString(1, sneaker.getModelo());
	        pst.setString(2, sneaker.getCollab());
	        pst.setString(3, sneaker.getCor());
	        pst.setString(4, sneaker.getImagem());
	        pst.setString(5, sneaker.getId());
	        pst.executeUpdate();
	        con.close();
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	}

	public void removerSneaker(JavaBeans sneaker) {
		String delete = "delete from sneakers where id=?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(delete);
			pst.setString(1, sneaker.getId());
			pst.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
	
}
