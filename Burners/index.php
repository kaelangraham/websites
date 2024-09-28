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
    ?>
    
    <!-- in image + slogan -->
     <div class="main_container">
        <img src="images/main-image.jpg" alt="image of parked cars">
        <div class="slogan">
            <h1>With hundreds of cars</h1>
            <h1>find your perfect match!</h1>
        </div>
    </div>



    <!-- search by car type -->
     <div class="type_search_container">
        <!-- heading -->
        <h1>Search by Car Type</h1>
        <!-- car images -->
        <div class="type_search_images">
            <form action="cars.php" method='POST'>
                <button name='body' value='Wagon'>
                    <img src="images/sprites/wagon_sprite.jpg" alt="Wagon">
                    <p>Wagon</p>
                </button>
                <button name='body' value='Utility'>
                    <img src="images/sprites/utility_sprite.jpg" alt="Utility">
                    <p>Utility</p>
                </button>
                <button name='body' value='Coupe'>
                    <img src="images/sprites/coupe_sprite.jpg" alt="Coupe">
                    <p>Coupe</p>
                </button>
                <button name='body' value='Hatchback'>
                    <img src="images/sprites/hatchback_sprite.jpg" alt="Hatchback">
                    <p>Hatchback</p>
                </button>
                <button name='body' value='Sedan'>
                    <img src="images/sprites/sedan_sprite.jpg" alt="Sedan">
                    <p>Sedan</p>
                </button>
                <button name='body' value='SUV'>
                    <img src="images/sprites/suv_sprite.jpg" alt="SUV">
                    <p>SUV</p>
                </button>
            </form>
        </div>
        <!-- search button -->
        <a href="cars.php" class="standard_search_button">
            <button>
                <p>Standard Search</p>
            </button>
        </a>
     </div>




     <!-- reviews -->
    <div class="reviews_container">
        <img src="images/grey-background.jpg" alt="">
        <div class="reviews_content">
            <h1>Reviews</h1>
            <div class="reviews">

                <!-- review card 1 -->
                <div class="review_card">
                    <div class="review_user">
                        <div class="review_profile" id="rating1">
                            <div>
                                <p>B</p>
                            </div>
                        </div>
                        <div class="review_rating">
                            <p>Bruce Banner</p>
                            <div class="stars">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="review_text">
                        <p>Quick and simple process that even
                            an old chap like me can figure 
                            out. Quick, Fast, and Efficent!</p>
                    </div>
                    <div class="review_location">
                        <p>Dunedin, Mar 2024</p>
                    </div>
                </div>
                <!-- review card 2 -->
                <div class="review_card">
                    <div class="review_user">
                        <div class="review_profile" id="rating2">
                            <div>
                                <p>J</p>
                            </div>
                        </div>
                        <div class="review_rating">
                            <p>Jacob Giles</p>
                            <div class="stars">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="review_text">
                        <p>Very simple and easy, great customer 
                            service helping me through the whole process!</p>
                    </div>
                    <div class="review_location">
                        <p>Christchurch, Apr 2024</p>
                    </div>
                </div>
                <!-- review card 3 -->
                <div id='rating_card3' class="review_card">
                    <div class="review_user">
                        <div class="review_profile" id="rating3">
                            <div>
                                <p>S</p>
                            </div>
                        </div>
                        <div class="review_rating">
                            <p>Sam Edwards</p>
                            <div class="stars">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="review_text">
                        <p>I wanted a tank but they didn't 
                            have one, so I picked from one 
                            of the hundreds of other cars!</p>
                    </div>
                    <div class="review_location">
                        <p>Christchurch, Apr 2024</p>
                    </div>
                </div>

            </div>
        </div>
    </div>


    
    <!-- footer -->
    <?php
        include 'include/footer.php';
    ?>


</body>
</html>