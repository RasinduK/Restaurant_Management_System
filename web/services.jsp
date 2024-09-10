<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Our Services</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Modern and Responsive CSS */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }
        header {
            background-color: #333;
            padding: 15px 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header h1 {
            margin: 0;
            font-size: 24px;
        }

        main {
            padding: 40px 20px;
            max-width: 1200px;
            margin: auto;
        }
        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 10px;
            text-align: center;
        }
        p {
            text-align: center;
            font-size: 18px;
            margin-bottom: 40px;
            color: #555;
        }
        .services-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }
        .service-box {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .service-box:hover {
            transform: scale(1.05);
        }
        .service-box img {
            max-width: 100%;
            border-radius: 10px;
        }
        .service-box h3 {
            margin-top: 15px;
            font-size: 22px;
            color: #333;
        }
        .service-box p {
            color: #666;
            margin-bottom: 15px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="search.jsp">Search</a></li>
                <li><a href="reservation.jsp">Make a Reservation</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main>
        <h2>Our Services</h2>
        <p>At ABC Restaurant, we offer a wide range of services to meet your dining and event needs. Explore our services below and see how we can make your next meal or event unforgettable.</p>

        <div class="services-container">
            <!-- Service 1: Dine-in Service -->
            <div class="service-box">
                <img src="images/dine-in.jpeg" alt="Dine-in Service">
                <h3>Dine-in Service</h3>
                <p>Experience our exceptional dining atmosphere with a wide variety of cuisines to satisfy your taste buds.</p>
            </div>

            <!-- Service 2: Takeaway Service -->
            <div class="service-box">
                <img src="images/takeaway.jpeg" alt="Takeaway Service">
                <h3>Takeaway Service</h3>
                <p>Order your favorite meals to-go and enjoy them from the comfort of your home or office.</p>
            </div>

            <!-- Service 3: Event Catering -->
            <div class="service-box">
                <img src="images/catering.jpeg" alt="Event Catering">
                <h3>Event Catering</h3>
                <p>From intimate gatherings to large events, our catering services provide delicious food and professional service.</p>
            </div>

            <!-- Service 4: Delivery Service -->
            <div class="service-box">
                <img src="images/delivery.jpeg" alt="Delivery Service">
                <h3>Delivery Service</h3>
                <p>Enjoy our dishes delivered straight to your door with our fast and reliable delivery service.</p>
            </div>
        </div>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
