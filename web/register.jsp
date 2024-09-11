<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant - Register</title>
    <link rel="stylesheet" href="styles.css">
    <style>
         html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        main {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            margin: 0 auto;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 1rem;
            color: #333;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="password"] {
            padding: 12px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            width: 100%;
        }

        button {
            padding: 12px;
            font-size: 1rem;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        footer {
            text-align: center;
            padding: 15px;
            margin-top: auto;
            color: #666;
        }
    </style>
</head>
<body>

        <h1>Register</h1>
    <main>
 <form action="RegisterServlet" method="post">
    <div class="input-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
    </div>

    <div class="input-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
    </div>

    <div class="input-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
    </div>

    <div class="input-group">
        <label for="role">Role</label>
        <select id="role" name="role" required>
            <option value="customer">Customer</option>
            <option value="admin">Admin</option>
            <option value="staff">Staff</option>
        </select>
    </div>

    <button type="submit">Register</button>
</form>
      
        <a href="login.jsp">Already have an account? Login here.</a>
    </main>

</body>
</html>
