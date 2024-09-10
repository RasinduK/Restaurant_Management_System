<%@page import="com.sun.jdi.connect.spi.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant - Generate Report</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #343a40;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
        }

        main {
            padding: 20px;
            margin: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        form {
            max-width: 800px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        select, input, button {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        button {
            background-color: #343a40;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #495057;
        }

        .report-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .report-table th, .report-table td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        .report-table th {
            background-color: #343a40;
            color: #fff;
        }

        footer {
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            color: #666;
        }
    </style>
</head>
<body>
    <header>
        <h1>Generate Report</h1>
    </header>
    <main>
        <form action="GenerateReportServlet" method="get">
            <label for="reportType">Select Report Type:</label>
            <select id="reportType" name="reportType" required>
                <option value="sales">Sales Report</option>
                <option value="reservations">Reservations Report</option>
                <option value="feedback">Customer Feedback Report</option>
                <!-- Add more report types as needed -->
            </select>

            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" required>

            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required>

            <button type="submit">Generate Report</button>
        </form>

        <!-- Display generated report results here -->
        <%
            String reportType = request.getParameter("reportType");
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");

            if (reportType != null && startDate != null && endDate != null) {
                // Database connection details
                String url = "jdbc:mysql://localhost:3306/yourdatabase";
                String dbUser = "yourdbuser";
                String dbPassword = "yourdbpassword";
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, dbUser, dbPassword);
                    String sql = "";
                    if (reportType.equals("sales")) {
                        sql = "SELECT * FROM sales WHERE sale_date BETWEEN ? AND ?";
                    } else if (reportType.equals("reservations")) {
                        sql = "SELECT * FROM reservations WHERE reservation_date BETWEEN ? AND ?";
                    } else if (reportType.equals("feedback")) {
                        sql = "SELECT * FROM feedback WHERE feedback_date BETWEEN ? AND ?";
                    }

                    pstmt = conn.prepareStatement(sql);
                    pstmt.setDate(1, java.sql.Date.valueOf(startDate));
                    pstmt.setDate(2, java.sql.Date.valueOf(endDate));
                    rs = pstmt.executeQuery();
        %>
        <table class="report-table">
            <thead>
                <tr>
                    <% if (reportType.equals("sales")) { %>
                        <th>Sale ID</th>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Sale Date</th>
                    <% } else if (reportType.equals("reservations")) { %>
                        <th>Reservation ID</th>
                        <th>Customer ID</th>
                        <th>Reservation Date</th>
                        <th>Type</th>
                    <% } else if (reportType.equals("feedback")) { %>
                        <th>Feedback ID</th>
                        <th>Customer ID</th>
                        <th>Feedback</th>
                        <th>Feedback Date</th>
                    <% } %>
                </tr>
            </thead>
            <tbody>
                <% while (rs.next()) { %>
                    <tr>
                        <% if (reportType.equals("sales")) { %>
                            <td><%= rs.getInt("sale_id") %></td>
                            <td><%= rs.getString("product") %></td>
                            <td><%= rs.getInt("quantity") %></td>
                            <td><%= rs.getDouble("total_price") %></td>
                            <td><%= rs.getDate("sale_date") %></td>
                        <% } else if (reportType.equals("reservations")) { %>
                            <td><%= rs.getInt("reservation_id") %></td>
                            <td><%= rs.getInt("customer_id") %></td>
                            <td><%= rs.getDate("reservation_date") %></td>
                            <td><%= rs.getString("type") %></td>
                        <% } else if (reportType.equals("feedback")) { %>
                            <td><%= rs.getInt("feedback_id") %></td>
                            <td><%= rs.getInt("customer_id") %></td>
                            <td><%= rs.getString("feedback") %></td>
                            <td><%= rs.getDate("feedback_date") %></td>
                        <% } %>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <% 
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<p>Error generating report: " + e.getMessage() + "</p>");
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (conn != null) conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </main>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
