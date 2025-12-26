import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/login") // Must match form action
public class RequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        HttpSession session = request.getSession();

        String user = request.getParameter("usName");
        String password = request.getParameter("usPass");

        if ("good".equals(password)) {
            session.setAttribute("user", user);
            RequestDispatcher rd =
                    request.getRequestDispatcher("/WEB-INF/welcome.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Password is wrong.");
            RequestDispatcher rd =
                    request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
    }
}
