<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant - Add Content</title>
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

        input, textarea, select, button {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        textarea {
            resize: vertical;
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
        <h1>Add New Content</h1>
    </header>
    <main>
        <form action="AddContentServlet" method="post">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="content">Content:</label>
            <textarea id="content" name="content" rows="6" required></textarea>
            
            <label for="category">Category:</label>
            <select id="category" name="category" required>
                <option value="offers">Offers</option>
                <option value="services">Services</option>
                <option value="news">News</option>
                <option value="events">Events</option>
            </select>

            <label for="image">Image URL (optional):</label>
            <input type="text" id="image" name="image">

            <button type="submit">Add Content</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
