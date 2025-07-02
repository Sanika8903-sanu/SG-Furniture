<?php

$active = 'about';
include("includes/header.php");

?>

<style>
    .about {
        background-image: linear-gradient(rgba(255, 255, 255, 0.8), rgba(255, 255, 255, 0.8)), url(./admin_area/about/1.jpg);
        padding: 40px 0;
        margin-top: 10px;
        margin-bottom: 20px;
    }

    .about h1 {
        text-align: center;
        font-size: 36px;
        color: #000;
        margin-bottom: 20px;
    }

    .about p {
        font-size: 17px;
        line-height: 1.5;
        margin-bottom: 20px;
        color: #000;
    }
</style>
<section class="about">
    <div class="container">
        <h1>About Us</h1>
        <p>Furniture Shop is your ultimate destination for high-quality furniture and home decor. With a passion for
            design and a commitment to customer satisfaction, we aim to provide you with the best shopping experience for
            all your furniture needs.</p>
        <p>Our mission is to provide high-quality, affordable furniture that reflects your unique taste and personality. With a wide range of designs and materials to choose from, you're sure to find the perfect pieces to complete your home.</p>
        <p>At Furniture Shop, we believe in sustainability and eco-friendly practices. Our furniture is crafted using responsibly sourced materials, and we are committed to reducing our carbon footprint.</p>
    </div>
</section>

<?php
include("includes/footer.php");

?>

<script src="js/jquery-331.min.js"></script>
<script src="js/bootstrap-337.min.js"></script>