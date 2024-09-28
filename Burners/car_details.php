<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Burners - Find your perfect match!</title>
    <link rel="icon" href="images/burners_logo.jpg" type="image/x-icon"/>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="styles/styles.css">
</head>
<body>
    <!-- navbar -->
    <?php
        include 'include/navbar.php';
        include("include/db_connect.php"); 
    ?>
    
    <?php
    
        if (isset($_GET['id'])) {
            $car_id = $_GET['id'];
            $item_sql_validate = "SELECT id FROM cars WHERE id LIKE '";
            $item_sql_validate .= $car_id;
            $item_sql_validate .= "'";            
            $item_query_validate = mysqli_query($dbconnect, $item_sql_validate);
            $item_rs_validate = mysqli_fetch_assoc($item_query_validate);
        }
        if ($item_rs_validate) {
            $item_sql = "SELECT cars.name, cars.price, cars.year, cars.odometer, cars.img1, cars.img2,
                        cars.img3, body.body, brand.brand, fuel.fuel, transmission.transmission
                        FROM cars
                        INNER JOIN body ON cars.body_id = body.id
                        INNER JOIN brand ON cars.brand_id = brand.id
                        INNER JOIN fuel ON cars.fuel_id = fuel.id
                        INNER JOIN transmission ON cars.transmission_id = transmission.id
                        WHERE cars.id = ";
            $item_sql .= $car_id;
            $item_sql .= " LIMIT 1;";

            $item_query = mysqli_query($dbconnect, $item_sql);
            $item_rs = mysqli_fetch_assoc($item_query);

        // details heading
        echo "<div class='car_details_container'>";
            echo "<div class='car_details_top_container'>";
                
                    echo "<h1 class='heading_name'>", $item_rs['year']," ", $item_rs['name'],"</h1>";
                    echo "<div class='heading_price_div'>";
                    echo    "<p>BUY NOW</p>";
                    echo    "<h1 class='heading_price'>$", $item_rs['price'],"</h1>";
                    echo "</div>";
                
            echo "</div>";
            echo "<hr class='car_details_hr'>";

            // main details
            echo '<div class="car_details_main_container">';
                // main image
                echo '<div class="car_details_main_images">';
                    echo '<div class="details_main_image_crop">';
                        
                            echo "<img id='details_main_image' src='", $item_rs['img1'],"' alt='Main image'>";
                        
                    echo "</div>";
                    // side images
                    echo '<div class="details_side_images">';
                        echo '<div class="side_image_crop">';
                            
                                echo "<img id='img1' src='", $item_rs['img1'],"' alt='Car front' onclick='change_image(img1)'>";
                            
                        echo '</div>';
                        echo '<div class="side_image_crop">';
                            
                                echo "<img id='img2' src='", $item_rs['img2'],"' alt='Car back' onclick='change_image(img2)'>";
                            
                        echo '</div>';
                        echo '<div class="side_image_crop">';
                            
                                echo "<img id='img3' src='", $item_rs['img3'],"' alt='Car inside' onclick='change_image(img3)'>";
                            
                        echo '</div>';
                    echo '</div>';
                echo '</div>';
                // details info
                echo '<div class="car_details_main_details">';
                    echo '<div class="info_card">';
                        echo '<p class="info_type">Transmission</p>';
                        
                            echo "<p class='info'>", $item_rs['transmission'],"</p>";
                        
                    echo '</div>';
                    echo '<hr class="info_hr">';
                    echo '<div class="info_card">';
                        echo '<p class="info_type">Body</p>';
                        
                            echo "<p class='info'>", $item_rs['body'],"</p>";
                        
                    echo '</div>';
                    echo '<hr class="info_hr">';
                    echo '<div class="info_card">';
                        echo '<p class="info_type">Odometer</p>';
                        
                            echo "<p class='info'>", $item_rs['odometer']," km</p>";
                        
                    echo '</div>';
                    echo '<hr class="info_hr">';
                    echo '<div class="info_card">';
                        echo '<p class="info_type">Brand</p>';
                        
                            echo "<p class='info'>", $item_rs['brand'],"</p>";
                        
                    echo '</div>';
                    echo '<hr class="info_hr">';
                    echo '<div class="info_card">';
                        echo '<p class="info_type">Year</p>';
                        
                            echo "<p class='info'>", $item_rs['year'],"</p>";
                        
                    echo '</div>';
                    echo '<hr class="info_hr">';
                    echo '<div class="info_card">';
                        echo '<p class="info_type">Fuel</p>';
                        
                            echo "<p class='info'>", $item_rs['fuel'],"</p>";
                        
                    echo '</div>';
                    echo '<hr class="info_hr">';
                    echo '<div class="buy_now">';
                        echo '<p>Is this your perfect match?</p>';
                        echo '<a href="#">Buy now!</a>';
                    echo '</div>
                </div>
            </div>
        </div>';
        } else {
            echo "<div class='car_details_none'>
                  <h2>Page not found</h2>
                  <p>Unfortunately, this page or vehicle no longer exists!
                  Please <a href='index.php'>click here</a> to go back to our home page</p>
                  </div>";
        }
    ?>
    <!-- footer -->
    <?php
        include 'include/footer.php';
    ?>
    <script>
        var main_image = document.getElementById('details_main_image');
            function change_image(input) {
                var image_src = input.src;
                main_image.src = image_src;
            }
    </script>

</body>
</html>