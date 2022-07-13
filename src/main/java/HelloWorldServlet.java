import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    private int hitCount;

    public void init(){
        hitCount = 0;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String name = req.getParameter("name");
        res.setContentType("text/html");

        PrintWriter out = res.getWriter();
        hitCount++;
        String title = "Total number of Hits: " + hitCount;

        out.println("<h1>" + title + "</h1>");

        if(name != null) {
            out.println("<h1>Hello, " + name + " </h1>");
        }else {
            out.println("<h1>Hello, World!</h1>");
        }
    }
}
