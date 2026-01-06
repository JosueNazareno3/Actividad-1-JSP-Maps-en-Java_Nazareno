package controller;

import service.AutomovilService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class AutomovilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Crear una instancia del servicio
        AutomovilService service = new AutomovilService();

        // Establecer los mapas como atributos de la solicitud
        request.setAttribute("hashMap", service.getHashMap());
        request.setAttribute("linkedHashMap", service.getLinkedHashMap());
        request.setAttribute("treeMap", service.getTreeMap());

        // Redirigir la solicitud a la JSP para mostrar los datos
        RequestDispatcher rd = request.getRequestDispatcher("listarAutos.jsp");
        rd.forward(request, response);
    }
}
