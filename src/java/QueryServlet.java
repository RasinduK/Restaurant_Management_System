import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/QueryServlet")
public class QueryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int customerId = Integer.parseInt(request.getParameter("customer_id"));
        String queryText = request.getParameter("query_text");

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO queries (customer_id, query_text) VALUES (?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, customerId);
                stmt.setString(2, queryText);
                
                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect("index.jsp?message=Query submitted successfully");
                } else {
                    response.sendRedirect("query.jsp?error=Submission failed");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("query.jsp?error=Database error");
        }
    }
}
