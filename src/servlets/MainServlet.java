package servlets;

import db.DBManager;
import model.Footballer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/main")
public class MainServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String surname=req.getParameter("surname");
        String club=req.getParameter("club");
        int salary=Integer.parseInt(req.getParameter("salary"));
        int price=Integer.parseInt(req.getParameter("price"));
        long id=1;
        Footballer f=new Footballer(id,name,surname,salary,club,price);
        DBManager db=new DBManager();
        db.addFootballer(f);
        req.getRequestDispatcher("/index.jsp").forward(req,resp);

    }
}
