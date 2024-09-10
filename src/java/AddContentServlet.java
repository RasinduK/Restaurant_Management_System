import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/AddContentServlet")
public class AddContentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String category = request.getParameter("category");
        String image = request.getParameter("image");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Database connection details
            String url = "jdbc:mysql://localhost:3306/yourdatabase";
            String dbUser = "yourdbuser";
            String dbPassword = "yourdbpassword";

            // Establish connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, dbUser, dbPassword);

            // SQL Insert query
            String sql = "INSERT INTO content (title, content, category, image) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, title);
            pstmt.setString(2, content);
            pstmt.setString(3, category);
            pstmt.setString(4, image);

            // Execute update
            pstmt.executeUpdate();

            // Redirect or display success message
            response.sendRedirect("admin_dashboard.jsp"); // Redirect to the admin dashboard or another page
        } catch (IOException | ClassNotFoundException | SQLException e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while adding the content.");
        } finally {
            // Clean up resources
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
            }
        }
    }
}
