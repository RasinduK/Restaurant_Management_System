import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/StaffServlet")
public class StaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int reservationId = Integer.parseInt(request.getParameter("reservation_id"));
        String status = request.getParameter("status");

        try (Connection conn = DBUtil.getConnection()) {
            if ("updateReservation".equals(action)) {
                String sql = "UPDATE reservations SET status = ? WHERE reservation_id = ?";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, status);
                    stmt.setInt(2, reservationId);
                    
                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        response.sendRedirect("staff_dashboard.jsp?message=Reservation updated successfully");
                    } else {
                        response.sendRedirect("staff_dashboard.jsp?error=Update failed");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("staff_dashboard.jsp?error=Database error");
        }
    }
}
