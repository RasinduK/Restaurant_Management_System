import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String role = request.getParameter("role");

        String jdbcUrl = "jdbc:mysql://localhost:3306/abc_restaurant_db"; 
        String jdbcUsername = "root"; 
        String jdbcPassword = ""; 

        String sql = "INSERT INTO users (username, password, email, role) VALUES (?, ?, ?, ?)";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, email);  // Add email to the prepared statement
            pstmt.setString(4, role);

            int rowsInserted = pstmt.executeUpdate();

            if (rowsInserted > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Registration successful!');");
                out.println("location='login.jsp';");
                out.println("</script>");
            } else {
                out.println("<h3>Failed to register. Please try again.</h3>");
            }

        } catch (ClassNotFoundException | SQLException e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
            }
        }
    }
}

