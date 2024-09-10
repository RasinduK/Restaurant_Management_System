<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Our Services</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Modern and Responsive CSS */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }
        header {
            background-color: #333;
            padding: 15px 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header h1 {
            margin: 0;
            font-size: 24px;
        }

        main {
            padding: 40px 20px;
            max-width: 1200px;
            margin: auto;
        }
        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 10px;
            text-align: center;
        }
        p {
            text-align: center;
            font-size: 18px;
            margin-bottom: 40px;
            color: #555;
        }
        .services-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }
        .service-box {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .service-box:hover {
            transform: scale(1.05);
        }
        .service-box img {
            max-width: 100%;
            border-radius: 10px;
        }
        .service-box h3 {
            margin-top: 15px;
            font-size: 22px;
            color: #333;
        }
        .service-box p {
            color: #666;
            margin-bottom: 15px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="view_menu.jsp">Menu</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main>
        <h2>Our Services</h2>
        <p>At ABC Restaurant, we offer a wide range of services to meet your dining and event needs. Explore our services below and see how we can make your next meal or event unforgettable.</p>

        <div class="services-container">
            <% 
                // Database connection setup
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_restaurant_db", "root", "");
                    stmt = conn.createStatement();
                    String sql = "SELECT * FROM content WHERE category='services'";
                    rs = stmt.executeQuery(sql);

                    // Loop through the result set and display each service
                    while (rs.next()) {
                        String title = rs.getString("title");
                        String content = rs.getString("content");
                        String image = rs.getString("image");

                        // Display the content dynamically
            %>
            <div class="service-box">
                <img src="<%= image %>" alt="<%= title %>">
                <h3><%= title %></h3>
                <p><%= content %></p>
            </div>
            <% 
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (Exception e) { }
                    if (stmt != null) try { stmt.close(); } catch (Exception e) { }
                    if (conn != null) try { conn.close(); } catch (Exception e) { }
                }
            %>
        </div>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
