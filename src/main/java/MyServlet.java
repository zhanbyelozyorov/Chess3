/**
 * Created by 2 on 28.06.2018.
 */
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("")
public class MyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("drow") != null) {
            String size = request.getParameter("chess_size");
            if (Integer.valueOf(size) > 26 || Integer.valueOf(size) < 2){
                request.setAttribute("side", size);
                pageRedirector("/index.jsp", request, response);
            }else {
                request.setAttribute("side", size);
                pageRedirector("/secondpage.jsp", request, response);


            }
        }
    }

    private void pageRedirector(String page, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final ServletContext servletContext = getServletContext();
        servletContext.getRequestDispatcher(page).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        pageRedirector("/index.jsp", request, response);
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }
}

