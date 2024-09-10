<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant - Submit Query</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Submit a Query</h1>
    </header>
    <main>
        <form action="QueryServlet" method="post">
            <label for="customer_id">Customer ID:</label>
            <input type="number" id="customer_id" name="customer_id" required>
            
            <label for="query_text">Your Query:</label>
            <textarea id="query_text" name="query_text" required></textarea>
            
            <button type="submit">Submit Query</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
