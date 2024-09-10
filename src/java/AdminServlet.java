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

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String URL = "jdbc:mysql://localhost:3306/abc_restaurant";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            if ("updateReservation".equals(action)) {
                int reservationId = Integer.parseInt(request.getParameter("reservation_id"));
                String status = request.getParameter("status");

                if (isValidStatus(status)) {
                    String sql = "UPDATE reservations SET status = ? WHERE reservation_id = ?";
                    try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                        stmt.setString(1, status);
                        stmt.setInt(2, reservationId);
                        int rowsAffected = stmt.executeUpdate();
                        if (rowsAffected > 0) {
                            response.sendRedirect("admin_dashboard.jsp?message=Reservation updated successfully");
                        } else {
                            response.sendRedirect("admin_dashboard.jsp?error=Update failed");
                        }
                    }
                } else {
                    response.sendRedirect("admin_dashboard.jsp?error=Invalid status");
                }

            } else if ("updateQuery".equals(action)) {
                int queryId = Integer.parseInt(request.getParameter("query_id"));
                String status = request.getParameter("status");

                if (isValidStatus(status)) {
                    String sql = "UPDATE queries SET status = ? WHERE query_id = ?";
                    try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                        stmt.setString(1, status);
                        stmt.setInt(2, queryId);
                        int rowsAffected = stmt.executeUpdate();
                        if (rowsAffected > 0) {
                            response.sendRedirect("admin_dashboard.jsp?message=Query updated successfully");
                        } else {
                            response.sendRedirect("admin_dashboard.jsp?error=Update failed");
                        }
                    }
                } else {
                    response.sendRedirect("admin_dashboard.jsp?error=Invalid status");
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("admin_dashboard.jsp?error=Database error");
        } catch (NumberFormatException e) {
            response.sendRedirect("admin_dashboard.jsp?error=Invalid ID format");
        }
    }

    private boolean isValidStatus(String status) {
        return status != null && (status.equals("Pending") || status.equals("Confirmed") || status.equals("Cancelled"));
    }
}
