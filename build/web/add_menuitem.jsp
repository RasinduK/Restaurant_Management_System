<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin - Add Menu Item</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h1 {
            margin-bottom: 20px;
            font-size: 24px;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"],
        textarea,
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        textarea {
            height: 100px;
            resize: none;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
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
                <li><a href="admin_dashboard.jsp">Dashboard</a></li>
                <li><a href="LogoutServlet">Logout</a></li>
            </ul>
        </nav>
    </header>
            <h1>Add Menu Item</h1>
    <main>
        <form action="AddMenuServlet" method="post">
            <label for="name">Item Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" required>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea>
            
            <label for="category">Category:</label>
            <select id="category" name="category" required>
                <option value="appetizer">Appetizer</option>
                <option value="main">Main Course</option>
                <option value="dessert">Dessert</option>
                <option value="beverage">Beverage</option>
            </select>
            
            <button type="submit">Add Menu Item</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
