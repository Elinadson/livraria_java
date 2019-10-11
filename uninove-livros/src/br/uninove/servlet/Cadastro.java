package br.uninove.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastro")
public class Cadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Cadastro() {
    	
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int v1 = Integer.parseInt(request.getParameter("valor1"));
		int v2 = Integer.parseInt(request.getParameter("valor2"));
		int resposta = v1 * v2;
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>RESPOSTA</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>" + resposta + "</h1>");
		out.println("</body>");
		out.println("</html>");
		
		
		
	}

}
