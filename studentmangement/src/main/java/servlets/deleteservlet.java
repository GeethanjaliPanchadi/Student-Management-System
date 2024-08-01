package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnections.studentdb;
import services.studentservice;

@WebServlet("/delete")
public class deleteservlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id  = Integer.parseInt(req.getParameter("id"));
		studentservice ser = new studentservice(studentdb.getConnection());
		ser.delbyid(id);
		boolean i=ser.delbyid(id);
		
		if (i) {
			resp.sendRedirect("welcome.jsp");
		}
		else {
			resp.sendRedirect("welcome.jsp");
		}
	}
}
