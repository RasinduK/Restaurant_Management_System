<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant - Settings</title>
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

        input, select, button {
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

        .settings-section {
            margin-bottom: 20px;
        }

        .settings-section h2 {
            border-bottom: 2px solid #343a40;
            padding-bottom: 10px;
            margin-bottom: 15px;
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
        <h1>Settings</h1>
    </header>
    <main>
        <div class="settings-section">
            <h2>Database Configuration</h2>
            <form action="UpdateDatabaseSettingsServlet" method="post">
                <label for="dbUrl">Database URL:</label>
                <input type="text" id="dbUrl" name="dbUrl" required>

                <label for="dbUser">Database User:</label>
                <input type="text" id="dbUser" name="dbUser" required>

                <label for="dbPassword">Database Password:</label>
                <input type="password" id="dbPassword" name="dbPassword" required>

                <button type="submit">Update Database Settings</button>
            </form>
        </div>

        <div class="settings-section">
            <h2>Site Configuration</h2>
            <form action="UpdateSiteSettingsServlet" method="post">
                <label for="siteTitle">Site Title:</label>
                <input type="text" id="siteTitle" name="siteTitle" required>

                <label for="siteEmail">Contact Email:</label>
                <input type="email" id="siteEmail" name="siteEmail" required>

                <label for="sitePhone">Contact Phone:</label>
                <input type="tel" id="sitePhone" name="sitePhone" required>

                <button type="submit">Update Site Settings</button>
            </form>
        </div>

        <div class="settings-section">
            <h2>User Management</h2>
            <form action="ManageUsersServlet" method="post">
                <label for="userAction">Action:</label>
                <select id="userAction" name="userAction" required>
                    <option value="view">View Users</option>
                    <option value="add">Add User</option>
                    <option value="remove">Remove User</option>
                </select>

                <label for="username">Username (if applicable):</label>
                <input type="text" id="username" name="username">

                <button type="submit">Execute</button>
            </form>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
