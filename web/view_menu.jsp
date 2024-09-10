<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant - View Menu</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #343a40;
            color: white;
            padding: 20px;
            text-align: center;
        }
        main {
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #343a40;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        .description {
            max-width: 400px;
        }
        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
   <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="services.jsp">Services</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h1>Our Menu</h1>
        <table>
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Description</th>
                    <th>Category</th>
                    <th>Price (LKR)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
                    try {
                        // Database connection
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_restaurant_db", "root", "");

                        String sql = "SELECT * FROM menu";
                        pstmt = conn.prepareStatement(sql);
                        rs = pstmt.executeQuery();

                        while (rs.next()) {
                            String itemName = rs.getString("name");
                            String description = rs.getString("description");
                            String category = rs.getString("category");
                            double price = rs.getDouble("price");
                %>
                            <tr>
                                <td><%= itemName %></td>
                                <td class="description"><%= description %></td>
                                <td><%= category %></td>
                                <td><%= String.format("%.2f", price) %></td>
                            </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (conn != null) conn.close();
                    }
                %>
            </tbody>
        </table>
    </main>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
