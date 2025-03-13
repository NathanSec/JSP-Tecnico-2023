

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CadastroFuncionariosServlet")
public class CadastroFuncionariosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		int registroFunc = Integer.parseInt(request.getParameter("registroFunc"));
		String sexo = request.getParameter("sexo");
		String endereco = request.getParameter("endereco");
		int telefone = Integer.parseInt(request.getParameter("telefone"));
		
		GregorianCalendar calendario = new GregorianCalendar();
		String mensagem = calendario.get(Calendar.AM_PM) == Calendar.AM ? "Bom Dia" : "Boa Tarde";
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<style>");
		out.println(".caixa1{");
		out.println("		text-align: center;");	
		out.println("		background-color: lightgray;");
		out.println("		");
		out.println("}");
		out.println("span{");
		out.println("text-align:center;");
		out.println("]");
		out.println("</style>");	
		out.println("<body>");	
		out.println("<span><h2>" + mensagem + ", " + nome + ", Segue abaixo suas informações:</h2></span>");
		out.println("<div class=\"caixa1\">");	
		out.println("<p> Nome: " + nome + "</p>");
		out.println("<p> Número de Registro: " + registroFunc + "</p>");
		out.println("<p> Sexo: " + sexo + "</p>");
		out.println("<p> Endereço: " + endereco + "</p>");
		out.println("<p> Telefone: " + telefone + "</p>");
		out.println("</div>");	
		out.println("<p>Seja Bem-Vindo à nossa Instituição.</p>");
		
		out.println("</body>");
		out.println("</html>");
		out.close();
		
		
		
	}



}
