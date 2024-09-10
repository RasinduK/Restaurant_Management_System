<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant - Admin Dashboard</title>
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

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
        }

        main {
            padding: 20px;
            margin: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        section {
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
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
        <h1>Admin Dashboard</h1>
        <nav>
            <ul>
                <li><a href="admin_dashboard.jsp">Dashboard</a></li>
                <li><a href="user_management.jsp">User Management</a></li>
                <li><a href="content_management.jsp">Content Management</a></li>
                <li><a href="reports.jsp">Reports</a></li>
                <li><a href="settings.jsp">Settings</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section>
            <h2>Overview</h2>
            <p>Welcome to the admin dashboard. Here you can manage users, content, view reports, and adjust system settings.</p>
        </section>
        
        <section>
            <h2>Recent Activities</h2>
            <!-- Display recent activities or logs -->
        </section>

        <section>
            <h2>User Management</h2>
            <a href="add_user.jsp">Add New User</a>
            <!-- Display user management table here -->
        </section>

        <section>
            <h2>Content Management</h2>
            <a href="add_content.jsp">Add New Content</a>
            <!-- Display content management table here -->
        </section>

        <section>
            <h2>Reports</h2>
            <a href="generate_report.jsp">Generate Report</a>
            <!-- Display report options or tables here -->
        </section>

        <section>
            <h2>Settings</h2>
            <!-- Display settings options here -->
        </section>
    </main>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
