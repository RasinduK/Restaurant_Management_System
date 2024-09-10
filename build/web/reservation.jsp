<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Reservation</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        main {
            padding: 40px 20px;
            max-width: 600px;
            margin: 0 auto;
        }

        form {
            display: flex;
            flex-direction: column;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 16px;
            margin-bottom: 8px;
        }

        input, select {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        input:focus, select:focus {
            border-color: #f04e30;
            outline: none;
        }

        button {
            padding: 12px;
            background-color: #f04e30;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #ff7043;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 50px;
        }

        footer p {
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            main {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Make a Reservation</h1>
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
