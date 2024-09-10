<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Reservation</title>
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
    <!-- Header Section -->
    <header>
        <nav>
            <ul>
                <li><a href="user_dashboard.jsp">Home</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="view_menu.jsp">Menu</a></li>
                <li><a href="reservation.jsp">Make a Reservation</a></li>
               <li><a href="LogoutServlet">Logout</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main>
        <form action="ReservationServlet" method="post">
            <label for="customer_id">Customer ID:</label>
            <input type="number" id="customer_id" name="customer_id" required>
            
            <label for="reservation_date">Reservation Date:</label>
            <input type="datetime-local" id="reservation_date" name="reservation_date" required>
            
            <label for="type">Reservation Type:</label>
            <select id="type" name="type" required>
                <option value="delivery">Delivery</option>
                <option value="dine-in">Dine-in</option>
            </select>
            
            <button type="submit">Reserve</button>
        </form>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
