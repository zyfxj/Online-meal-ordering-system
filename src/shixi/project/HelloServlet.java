package shixi.project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet")
public class HelloServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getMethod());
        System.out.println(request.getProtocol());
        System.out.println(request.getRemotePort());
        System.out.println(request.getPathTranslated());
        System.out.println(request.getHeader("User-Agent"));
        System.out.println(request.getHeader("Host"));

        response.setStatus(202);
        response.setHeader("my-header","xxxx");
        response.getWriter().println("<html>");
        response.getWriter().println("<body>");
        response.getWriter().println("<h1>hello world!</h1>");
        response.getWriter().println("<body>");
        response.getWriter().println("</html>");
    }
}
