package controller;

import service.AutomovilService;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/AutomovilServlet")
public class AutomovilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        AutomovilService service = new AutomovilService();

        request.setAttribute("hashMap", service.getHashMap());
        request.setAttribute("linkedHashMap", service.getLinkedHashMap());
        request.setAttribute("treeMap", service.getTreeMap());

        RequestDispatcher rd = request.getRequestDispatcher("listarAutos.jsp");
        rd.forward(request, response);
    }
}

