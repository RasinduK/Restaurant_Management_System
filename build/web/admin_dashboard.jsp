<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
            color: #333;
        }

        header {
            background-color: #343a40;
            color: #fff;
            padding: 15px 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        header h1 {
            margin: 0;
            font-size: 26px;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        nav ul li {
            display: inline-block;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: 500;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #495057;
            color: #e9ecef;
        }

        main {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            font-size: 20px;
            border-bottom: 3px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 20px;
            color: #212529;
        }

        section {
            margin-bottom: 30px;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: 600;
        }

        a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        table th, table td {
            padding: 12px;
            border: 1px solid #dee2e6;
            text-align: left;
        }

        table th {
            background-color: #f1f1f1;
            font-weight: 600;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #e9ecef;
            transition: background-color 0.3s ease;
        }

        /* Footer Styles */
        footer {
            text-align: center;
            padding: 15px;
            background-color: #ffffff;
            border-top: 1px solid #dee2e6;
            margin-top: 30px;
            font-size: 13px;
            color: #6c757d;
        }

        footer p {
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            main {
                padding: 15px;
                margin: 10px;
            }

            nav ul {
                flex-direction: column;
                gap: 8px;
            }

            table th, table td {
                padding: 10px;
            }
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
      <h1>Admin DashBoard</h1>
    <main>
        <section>
            <h2>Overview</h2>
            <p>Welcome to the admin dashboard. Here you can manage users, content, view reports, and adjust system settings.</p>
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
            <h2>Menu</h2>
            <a href="add_menuitem.jsp">Add Items</a>
            <!-- Display menu items here -->
        </section>

        <section>
            <h2>Reservations</h2>
            <a href="view_reservation.jsp">View Reservations</a>
        </section>
    </main>
    
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
