<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Search</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Base styles */
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
            font-weight: bold;
            margin-bottom: 10px;
        }

        main {
            padding: 40px 20px;
            max-width: 800px;
            margin: 0 auto;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 30px;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 18px;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 100%;
            max-width: 500px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            margin-bottom: 20px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #f04e30;
            outline: none;
        }

        button {
            padding: 10px 20px;
            background-color: #f04e30;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #ff7043;
        }

        /* Display area for search results */
        .search-results {
            margin-top: 30px;
        }

        .search-results h2 {
            font-size: 24px;
            color: #f04e30;
            text-align: center;
            margin-bottom: 15px;
        }

        .search-results p {
            font-size: 16px;
            color: #555;
            text-align: center;
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
            form {
                padding: 20px;
            }
        }

        @media (max-width: 480px) {
            input[type="text"] {
                width: 100%;
            }

            button {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Search Services and Facilities</h1>
    </header>

    <!-- Main Content Section -->
    <main>
        <form action="SearchServlet" method="get">
            <label for="query">Search:</label>
            <input type="text" id="query" name="query" placeholder="Type here to search..." required>
            
            <button type="submit">Search</button>
        </form>

        <!-- Display search results here -->
        <div class="search-results">
            <h2>Search Results</h2>
            <p>No results to display yet.</p> <!-- Dynamic content will be added here -->
        </div>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
