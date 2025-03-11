package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.JavaBeans;

@WebServlet(urlPatterns = { "/Controller", "/main", "/insert", "/select", "/update", "/delete" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao = new DAO();
	JavaBeans sneaker = new JavaBeans();

	public Controller() {
		super();
	}
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// teste de conexão
		// dao.testeConexao();
		String action = request.getServletPath();
		System.out.println(action);
		if (action.equals("/main")) {
			sneakers(request, response);
		} else if (action.equals("/insert")) {
			novoSneaker(request, response);
		} else if (action.equals("/select")) {
			listarSneaker(request, response);
		} else if (action.equals("/update")) {
			editarSneaker(request, response);
		} else if (action.equals("/delete")) {
			removerSneaker(request, response);
		} else {
			response.sendRedirect("index.html");
		}
	}

	// Listar contatos
	protected void sneakers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Criando um objeto que irá receber os dados JavaBeans
		ArrayList<JavaBeans> lista = dao.listarSneakers();
		// Encaminhar a lista ao documento sneakers.jsp
		request.setAttribute("sneakers", lista);
		RequestDispatcher rd = request.getRequestDispatcher("sneakers.jsp");
		rd.forward(request, response);
	}

	// Novo sneaker
	protected void novoSneaker(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		sneaker.setModelo(request.getParameter("modelo"));
		sneaker.setCollab(request.getParameter("collab"));
		sneaker.setCor(request.getParameter("cor"));
		sneaker.setImagem(request.getParameter("imagem")); // Adicionado para lidar com a imagem
		dao.inserirSneaker(sneaker);
		response.sendRedirect("main");
	}

	// Editar Sneaker

	protected void listarSneaker(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Recebimento do id do sneaker que será editado
		String id = request.getParameter("id");
		// Setar a variável JavaBeans
		sneaker.setId(id);
		// Executar o método selecionarSneaker(DAO)
		dao.selecionarSneaker(sneaker);
		// Setar os atributos do formlário com o conteúdo JavaBeans
		request.setAttribute("id", sneaker.getId());
		request.setAttribute("modelo", sneaker.getModelo());
		request.setAttribute("collab", sneaker.getCollab());
		request.setAttribute("cor", sneaker.getCor());
		// encaminhar ao documento editar.jsp
		RequestDispatcher rd = request.getRequestDispatcher("editar.jsp");
		rd.forward(request, response);
	}

	protected void editarSneaker(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		sneaker.setId(request.getParameter("id"));
		sneaker.setModelo(request.getParameter("modelo"));
		sneaker.setCollab(request.getParameter("collab"));
		sneaker.setCor(request.getParameter("cor"));
		sneaker.setImagem(request.getParameter("imagem")); // Adicionado para lidar com a imagem
		dao.alterarSneaker(sneaker);
		response.sendRedirect("main");
	}

	protected void removerSneaker(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		sneaker.setId(request.getParameter("id"));
		dao.removerSneaker(sneaker);
		response.sendRedirect("main");
	}
}
