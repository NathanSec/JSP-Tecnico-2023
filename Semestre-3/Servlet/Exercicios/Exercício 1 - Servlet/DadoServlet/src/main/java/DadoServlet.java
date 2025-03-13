import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DadoServlet")
public class DadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int NUM_SIDES = 6; // Declaração de uma constante
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int d1 = rollDice();
		int d2 = rollDice();
		String alert = "";
		if(d1 == d2) {
			alert = "Os números são iguais";		
		}if(d1 > d2) {
			alert = "O número ganhado do Dado 1 é maior do que o Dado 2.";
		}if (d2 > d1) {
			alert = "O número ganhado do Dado 2 é maior do que o Dado 2.";
		}

		response.setContentType("text/html");
		
		try(PrintWriter out = response.getWriter()){
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Lançamento de dados</title>");
			out.println("<style>");
			out.println("body{");
			out.println("	  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;");
			out.println("	  padding: 20px;");
			out.println("	  text-align: center;");
			out.println("	  background-image: url('imagens/dado.jpg');");
			out.println("	  background-size: cover;");
			out.println("	  background-repeat: no-repeat;");
			out.println("}");
			out.println("h1{");
			out.println("	color:red;");
			out.println("}");
			out.println(".dice-number{");
			out.println("			  font-size: 40px;");
			out.println("			  margin-top: 10px;");
			out.println("			  color: MediumBlue;");
			out.println("			  text-align: center;");
			out.println("}");
			out.println(".dice-label{");
			out.println("			 color: Yellow;");
			out.println("}");
			out.println(".msgAlert{");
			out.println("		   color: white;");
			out.println("}");
			out.println("</style>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Lançamento de dados</h1>");
			out.println("<div class=\"dice-number\"><span class=\"dice-label\">Dado 1:</span>"+ d1 + "</div>");
			out.println("<div class=\"dice-number\"><span class=\"dice-label\">Dado 2:</span>"+ d2 + "</div>");	
			out.println("<span class=\"msgAlert\">"+ alert + "</span>");
			out.println("</body>");
			out.println("</html>");
		}

		
		
	}
	private int rollDice() {
		Random aleatorio = new Random();
		return aleatorio.nextInt(NUM_SIDES) + 1;
	}

	
}
