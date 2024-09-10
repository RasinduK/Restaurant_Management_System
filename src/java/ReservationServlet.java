import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int customerId = Integer.parseInt(request.getParameter("customer_id"));
        String reservationDate = request.getParameter("reservation_date");
        String type = request.getParameter("type");

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO reservations (customer_id, reservation_date, type, status) VALUES (?, ?, ?, 'pending')";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, customerId);
                stmt.setString(2, reservationDate);
                stmt.setString(3, type);
                
                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect("index.jsp?message=Reservation successful");
                } else {
                    response.sendRedirect("reservation.jsp?error=Reservation failed");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("reservation.jsp?error=Database error");
        }
    }
}
