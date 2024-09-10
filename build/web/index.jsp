<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Home</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Modern and responsive CSS styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            color: #333;
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

        section {
            margin-bottom: 50px;
        }

        h2 {
            text-align: center;
            font-size: 30px;
            color: #f04e30;
            margin-bottom: 15px;
        }

        p {
            text-align: center;
            font-size: 18px;
            color: #555;
            max-width: 800px;
            margin: 0 auto;
            line-height: 1.8;
        }

        /* Offer and gallery sections */
        .offers, .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .offer-item, .gallery-item {
            width: calc(33.33% - 40px);
            padding: 15px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .offer-item:hover, .gallery-item:hover {
            transform: scale(1.05);
        }

        .offer-item img, .gallery-item img {
            max-width: 100%;
            border-radius: 10px;
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

        /* Responsive design */
        @media (max-width: 768px) {
            nav ul {
                flex-direction: column;
            }

            .offer-item, .gallery-item {
                width: calc(50% - 40px);
            }
        }

        @media (max-width: 480px) {
            .offer-item, .gallery-item {
                width: 100%;
            }
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
                <li><a href="view_menu.jsp">Menu</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main>
         <h1>ABC Restaurant</h1>
        <!-- About Us Section -->
        <section>
            <h2>About Us</h2>
            <p>Discover the finest dining experience with ABC Restaurant, located in various cities across Sri Lanka. We offer a wide range of delicious dishes and exceptional services, designed to create memorable moments.</p>
        </section>

        <!-- Special Offers Section -->
        <section>
            <h2>Special Offers</h2>
            <div class="offers">
                <!-- Sample Offer Item 1 -->
                <div class="offer-item">
                    <img src="images/offer1.jpeg" alt="Offer 1">
                    <h3>50% Off on Seafood Platters</h3>
                    <p>Enjoy our delicious seafood platters at half the price during the weekend!</p>
                </div>

                <!-- Sample Offer Item 2 -->
                <div class="offer-item">
                    <img src="images/offer2.jpeg" alt="Offer 2">
                    <h3>Free Desserts on Orders Above $50</h3>
                    <p>Get a complimentary dessert with every order above $50.</p>
                </div>

                <!-- Sample Offer Item 3 -->
                <div class="offer-item">
                    <img src="images/offer3.jpeg" alt="Offer 3">
                    <h3>Family Dinner Combo</h3>
                    <p>Special combo for families, including a variety of our best dishes at a discounted price.</p>
                </div>
            </div>
        </section>

        <!-- Gallery Section -->
        <section>
            <h2>Gallery</h2>
            <div class="gallery">
                <!-- Sample Gallery Image 1 -->
                <div class="gallery-item">
                    <img src="images/gallery1.jpeg" alt="Gallery 1">
                </div>

                <!-- Sample Gallery Image 2 -->
                <div class="gallery-item">
                    <img src="images/gallery2.jpeg" alt="Gallery 2">
                </div>

                <!-- Sample Gallery Image 3 -->
                <div class="gallery-item">
                    <img src="images/gallery3.jpeg" alt="Gallery 3">
                </div>
            </div>
        </section>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
