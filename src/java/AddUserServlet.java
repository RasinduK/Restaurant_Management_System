import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Replace with your actual database credentials
    private static final String URL = "jdbc:mysql://localhost:3306/abc_restaurant_db";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the form parameters
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String role = request.getParameter("role");

        // Validate form inputs
        if (username == null || username.isEmpty() || password == null || password.isEmpty() ||
            email == null || email.isEmpty() || role == null || role.isEmpty()) {
            response.sendRedirect("ad_user.jsp?error=All fields are required");
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);

            // SQL query to insert a new user
            String sql = "INSERT INTO users (username, password, email, role) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password); // In a real application, you should hash the password!
            stmt.setString(3, email);
            stmt.setString(4, role);

            // Execute the update
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                response.sendRedirect("admin_dashboard.jsp?message=User added successfully");
            } else {
                response.sendRedirect("ad_user.jsp?error=Failed to add user");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AddUserServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("ad_user.jsp?error=Database error: " + ex.getMessage());
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
            }
        }
    }
}
