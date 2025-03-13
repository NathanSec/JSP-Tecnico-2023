
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ListaDeTarefasServlet")
public class ListaDeTarefasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<String> listaTarefas = new ArrayList<String>();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String novaTarefa = request.getParameter("novaTarefa");
		listaTarefas.add(novaTarefa);

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<style>");
		out.println("background-color: #f0f0f0;  ");
		out.println("display: flex;");
		out.println("flex-direction: column;");
		out.println("align-items: center;");
		out.println("justify-content: center;");
		out.println("height: 100vh; ");
		out.println("}");
		out.println("</style>");
		out.println("<body>");
		out.println("<h1>Sua lista de Tarefas</h1>");
		out.println("<ul>");
		out.println("<li>" + listaTarefas);
		out.println("</ul>");
		out.println("<a href=index.html>Voltar Para Adicionar Tarefa</a>");
		out.println("</body>");
		out.println("</html>");

	}
}
