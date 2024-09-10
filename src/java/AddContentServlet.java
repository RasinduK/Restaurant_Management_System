import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddContentServlet")
public class AddContentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC URL, username, and password of MySQL server
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/abc_restaurant_db";
    private static final String JDBC_USER = "root"; // Update with your MySQL username
    private static final String JDBC_PASS = ""; // Update with your MySQL password

    // JDBC driver name and database URL
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver"; 

    // SQL Insert Query
    private static final String INSERT_CONTENT_SQL = "INSERT INTO content (title, content, category, image) VALUES (?, ?, ?, ?)";
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data from request
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String category = request.getParameter("category");
        String image = request.getParameter("image");

        // Database Connection and Insertion
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName(JDBC_DRIVER);

            // Establish a connection
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);

            // Create a prepared statement
            stmt = conn.prepareStatement(INSERT_CONTENT_SQL);
            stmt.setString(1, title);
            stmt.setString(2, content);
            stmt.setString(3, category);
            stmt.setString(4, image);

            // Execute the update
            int result = stmt.executeUpdate();

            // If insertion was successful, set success message
            if (result > 0) {
                request.setAttribute("successMessage", "Content added successfully!");
            } else {
                request.setAttribute("errorMessage", "Failed to add content. Please try again.");
            }

        } catch (ClassNotFoundException | SQLException e) {
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
        } finally {
            // Close resources
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
            }
        }

        // Redirect back to add_content.jsp with messages
        request.getRequestDispatcher("add_content.jsp").forward(request, response);
    }
}
