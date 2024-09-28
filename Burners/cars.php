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

    
    <!-- Car search filters -->
    <div class="car_search_container">
        <form action="cars.php" method="post">
        <div class="car_search">
            <div class="text_search">
                <p class="search_heading">Keyword</p>
                <div>
                    <!-- Keyword search -->
                    <?php
                        if (isset($_POST['keyword'])) {
                            echo "<input type='text' name='keyword' placeholder='Keyword...' value='", $_POST['keyword'],"'>";
                        } else {
                            echo "<input type='text' name='keyword' placeholder='Keyword...'>";
                        }
                    ?>
                </div>
            </div>
            <!-- make dropdown search -->
            <?php
                $item_sql = "SELECT * FROM brand";
                $item_query = mysqli_query($dbconnect, $item_sql);
                $item_rs = mysqli_fetch_assoc($item_query);
            ?>
            <div class="search_dropdown_container">
                <p class="search_heading">Make</p>
                <div class="search_dropdown">
                    <p id='make_text'>Any Make</p>
                    <i class="fa-solid fa-chevron-down"></i>
                    <div class="search_dropdown_content">
                        <?php
                            if (isset($_POST['make'])) {
                                if ($_POST['make'] == 'Any Make') {
                                    echo "<div>";
                                    echo    "<input type='hidden' id='onload_function_brand' value='Any Make'>";
                                    echo    "<input type='radio' id='any_make' name='make' value='Any Make' checked='checked' onchange='change_text(any_make)'>";
                                    echo    "<label for='any_make'>Any Make</label>";
                                    echo "</div>";
                                } else {
                                    echo "<div>";
                                    echo    "<input type='radio' id='any_make' name='make' value='Any Make' onchange='change_text(any_make)'>";
                                    echo    "<label for='any_make'>Any Make</label>";
                                    echo "</div>";
                                }
                                do {
                                    if ($_POST['make'] == $item_rs['brand']) {
                                        echo "<div>";
                                        echo    "<input type='hidden' id='onload_function_brand' value='", $item_rs['brand'],"'>";
                                        echo    "<input type='radio' id='make_", $item_rs['id'],"' name='make' value='", $item_rs['brand'],"' checked='checked' onchange='change_text(make_", $item_rs['id'],")'>";
                                        echo    "<label for='make_", $item_rs['id'],"'>", $item_rs['brand'],"</label>";
                                        echo "</div>";
                                    } else {
                                        echo "<div>";
                                        echo    "<input type='radio' id='make_", $item_rs['id'],"' name='make' value='", $item_rs['brand'],"' onchange='change_text(make_", $item_rs['id'],")'>";
                                        echo    "<label for='make_", $item_rs['id'],"'>", $item_rs['brand'],"</label>";
                                        echo "</div>";
                                    }
                                    
                                } while ($item_rs = mysqli_fetch_assoc($item_query));

                                

                            } else {
                                echo "<div>";
                                    echo    "<input type='radio' id='any_make' name='make' value='Any Make' checked='checked' onchange='change_text(any_make)'>";
                                    echo    "<label for='any_make'>Any Make</label>";
                                    echo "</div>";
                                do {
                                    echo "<div>";
                                    echo    "<input type='radio' id='make_", $item_rs['id'],"' name='make' value='", $item_rs['brand'],"' onchange='change_text(make_", $item_rs['id'],")'>";
                                    echo    "<label for='make_", $item_rs['id'],"'>", $item_rs['brand'],"</label>";
                                    echo "</div>";
                                } while ($item_rs = mysqli_fetch_assoc($item_query));
                            }
                        ?>
                    </div>
                </div>
            </div>
            <!-- body dropdown search -->
            <?php
                $item_sql = "SELECT * FROM body";
                $item_query = mysqli_query($dbconnect, $item_sql);
                $item_rs = mysqli_fetch_assoc($item_query);
            ?>
            <div class="search_dropdown_container">
                <p class="search_heading">Body Style</p>
                <div class="search_dropdown">
                    <p id='body_text'>Any Body Style</p>
                    <i class="fa-solid fa-chevron-down"></i>
                    <div class="search_dropdown_content">
                    <?php
                            if (isset($_POST['body'])) {
                                if ($_POST['body'] == 'Any Body Style') {
                                    echo "<div>";
                                    echo    "<input type='hidden' id='onload_function_body' value='Any Body Style'>";
                                    echo    "<input type='radio' id='any_body' name='body' value='Any Body Style' checked='checked' onchange='change_text(any_body)'>";
                                    echo    "<label for='any_body'>Any Body Style</label>";
                                    echo "</div>";
                                } else {
                                    echo "<div>";
                                    echo    "<input type='radio' id='any_body' name='body' value='Any Body Style' onchange='change_text(any_body)'>";
                                    echo    "<label for='any_body'>Any Body Style</label>";
                                    echo "</div>";
                                }
                                do {
                                    if ($_POST['body'] == $item_rs['body']) {
                                        echo "<div>";
                                        echo    "<input type='hidden' id='onload_function_body' value='", $item_rs['body'],"'>";
                                        echo    "<input type='radio' id='body_", $item_rs['id'],"' name='body' value='", $item_rs['body'],"' checked='checked' onchange='change_text(body_", $item_rs['id'],")'>";
                                        echo    "<label for='body_", $item_rs['id'],"'>", $item_rs['body'],"</label>";
                                        echo "</div>";
                                    } else {
                                        echo "<div>";
                                        echo    "<input type='radio' id='body_", $item_rs['id'],"' name='body' value='", $item_rs['body'],"' onchange='change_text(body_", $item_rs['id'],")'>";
                                        echo    "<label for='body_", $item_rs['id'],"'>", $item_rs['body'],"</label>";
                                        echo "</div>";
                                    }
                                    
                                } while ($item_rs = mysqli_fetch_assoc($item_query));
                            } else {
                                echo "<div>";
                                echo    "<input type='radio' id='any_body' name='body' value='Any Body Style' checked='checked' onchange='change_text(any_body)'>";
                                echo    "<label for='any_body'>Any Body Style</label>";
                                echo "</div>";
                                do {
                                    echo "<div>";
                                    echo    "<input type='radio' id='body_", $item_rs['id'],"' name='body' value='", $item_rs['body'],"' onchange='change_text(body_", $item_rs['id'],")'>";
                                    echo    "<label for='body_", $item_rs['id'],"'>", $item_rs['body'],"</label>";
                                    echo "</div>";
                                } while ($item_rs = mysqli_fetch_assoc($item_query));
                            }
                        ?>
                    </div>
                </div>
            </div>
            <!-- price search -->
            <div class="text_search" id='search_split'>
                <p class="search_heading">Price</p>
                <div class="search_split">
                    <div>
                        <?php
                            if (isset($_POST['price1'])) {
                                echo "<input type='number' name='price1' placeholder='From $...' value='", $_POST['price1'],"'>";
                            } else {
                                echo "<input type='number' name='price1' placeholder='From $...'>";
                            }
                        ?>
                    </div>
                    <div>
                        <?php
                            if (isset($_POST['price2'])) {
                                echo "<input type='number' name='price2' placeholder='To $...' value='", $_POST['price2'],"'>";
                            } else {
                                echo "<input type='number' name='price2' placeholder='To $...'>";
                            }
                        ?>
                    </div>
                </div>
            </div>

            <!-- odometer search -->
            <div class="text_search" id='search_split'>
                <p class="search_heading">Odometer</p>
                <div class="search_split">
                    <div>
                    <?php
                        if (isset($_POST['odo1'])) {
                            echo "<input type='number' name='odo1' placeholder='From...' value='", $_POST['odo1'],"'>";
                        } else {
                            echo "<input type='number' name='odo1' placeholder='From...'>";
                        }
                    ?>
                    </div>
                    <div>
                    <?php
                        if (isset($_POST['odo2'])) {
                            echo "<input type='number' name='odo2' placeholder='To...' value='", $_POST['odo2'],"'>";
                        } else {
                            echo "<input type='number' name='odo2' placeholder='To...'>";
                        }
                    ?>
                    </div>
                </div>
            </div>
            <!-- search button -->
             <div class="car_search_button">
                <input class="car_sb" type="submit" value="Submit">
             </div>
        </div>
    </div>

    <!-- car search results -->
    <!-- queries database for car info -->
    <?php
        $items_per_page = '10';
        
        // query for database
        // core of query (item_sql gets data, item_sql_count only counts how many row there are for page number display)
        $item_sql = "SELECT cars.id, cars.year, cars.name, cars.price, cars.img1, cars.odometer,
                        transmission.transmission, fuel.fuel, brand.brand, body.body ";
        $item_sql_count = "SELECT COUNT(*) ";
        $_item_sql = "FROM cars
                        INNER JOIN transmission ON cars.transmission_id = transmission.id
                        INNER JOIN fuel ON cars.fuel_id = fuel.id
                        INNER JOIN brand ON cars.brand_id = brand.id
                        INNER JOIN body ON cars.body_id = body.id
                        WHERE 1 ";
        // keyword filter
        if (isset($_POST['keyword'])) {
            if ($_POST['keyword']) {
                $keyword = mysqli_real_escape_string($dbconnect, $_POST['keyword']);
                $_item_sql .= "AND (name LIKE '%";
                $_item_sql .= $keyword;
                $_item_sql .= "%' OR transmission LIKE '%";
                $_item_sql .= $keyword;
                $_item_sql .= "%' OR fuel LIKE '%";
                $_item_sql .= $keyword;
                $_item_sql .= "%' OR brand LIKE '%";
                $_item_sql .= $keyword;
                $_item_sql .= "%' or body LIKE '%";
                $_item_sql .= $keyword;
                $_item_sql .= "%' or year LIKE '%";
                $_item_sql .= $keyword;
                $_item_sql .= "%') ";
            }
        }
        // make filter
        if (isset($_POST['make'])) {
            if ($_POST['make'] AND $_POST['make'] != 'Any Make') {
                $_item_sql .= "AND (brand LIKE '%";
                $_item_sql .= $_POST['make'];
                $_item_sql .= "%') ";
            }
        }
        // body filter
        if (isset($_POST['body']) AND $_POST['body'] != 'Any Body Style') {
            if ($_POST['body']) {
                $_item_sql .= "AND (body LIKE '%";
                $_item_sql .= $_POST['body'];
                $_item_sql .= "%') ";
            }
        }
        // price filter
        if (isset($_POST['price1']) AND isset($_POST['price2']) AND $_POST['price1'] AND $_POST['price2']) {
            $_item_sql .= "AND price BETWEEN ";
            $_item_sql .= $_POST['price1'];
            $_item_sql .= " AND ";
            $_item_sql .= $_POST['price2'];
            $_item_sql .= " ";
        } elseif (isset($_POST['price1']) AND $_POST['price1']) {
            $_item_sql .= "AND price > ";
            $_item_sql .= $_POST['price1'];
            $_item_sql .= " ";
        } elseif (isset($_POST['price2']) AND $_POST['price2']) {
            $_item_sql .= "AND price <= ";
            $_item_sql .= $_POST['price2'];
            $_item_sql .= " ";
        }
        // odometer filter
        if (isset($_POST['odo1']) AND isset($_POST['odo2']) AND $_POST['odo1'] AND $_POST['odo2']) {
            $_item_sql .= "AND odometer BETWEEN ";
            $_item_sql .= $_POST['odo1'];
            $_item_sql .= " AND ";
            $_item_sql .= $_POST['odo2'];
            $_item_sql .= " ";
        } elseif (isset($_POST['odo1']) AND $_POST['odo1']) {
            $_item_sql .= "AND odometer > ";
            $_item_sql .= $_POST['odo1'];
            $_item_sql .= " ";
        } elseif (isset($_POST['odo2']) AND $_POST['odo2']) {
            $_item_sql .= "AND odometer <= ";
            $_item_sql .= $_POST['odo2'];
            $_item_sql .= " ";
        }
        // gets number of results using sql COUNT
        
        $item_sql_count .= $_item_sql;
        $item_query_count = mysqli_query($dbconnect, $item_sql_count);
        $item_rs_count = mysqli_fetch_assoc($item_query_count);
        $number_of_results = $item_rs_count['COUNT(*)'];
        if (isset($_POST['page'])) {
            $page_number = $_POST['page'];
        }

        // error handling for no results
        if ($number_of_results > 0) {
            // finds current page
            // filters shown results based on page
            if (isset($page_number)) {
                if ($page_number) {
                    $results_from = 1 + ($page_number - 1)*10;
                    if ($results_from + 9 < $number_of_results) {
                        $results_to = $page_number * 10;
                    } else {
                        $results_to = $number_of_results;
                    }
                }
            } else {
                $results_from = 1;
                if (10 < $number_of_results) {
                    $results_to = 10;
                } else {
                    $results_to = $number_of_results;
                }
            }
            $_item_sql .= "LIMIT ";
            $_item_sql .= $results_from - 1;
            $_item_sql .= ", ";
            $_item_sql .= $items_per_page;
            $_item_sql .= ";";
        }
        // runs query
        $item_sql .= $_item_sql;
        $item_query = mysqli_query($dbconnect, $item_sql);
        $item_rs = mysqli_fetch_assoc($item_query); 
    ?>
    
    
    
            <!-- retrives number of results -->
            <?php
                if ($number_of_results > 0) {
                    echo "<div class='search_results_container'>";
                    echo    "<div class='results_number'>";
                    echo        "<p class='bold'>Results</p>";
                    echo            "<p>";
                    echo            $results_from;
                    echo            " to ";
                    echo            $results_to;
                    echo            " of ";
                    echo            $number_of_results;
                    echo        "</p>";
                    echo    "</div>";
                    echo "<hr>";
                } else {
                    echo "<div class='search_results_container' id='no_results'>";
                }
            ?>
        
        <div class="cars">
           
            <!-- retrieves car info from db -->
                <?php
                    if ($item_rs != null) {
                        do {
                            echo "<div class='car'>";
                            echo    "<div class='car_card'>";
                                        // car image
                            echo        "<div class='car_card_crop'>";
                            echo            "<a href='car_details.php?id=", $item_rs['id'],"'><img src='", $item_rs['img1'],"' alt=''></a>";
                            echo        "</div>";
                                        // car info
                            echo        "<div class='car_info'>";
                            echo            "<a href='car_details.php?id=", $item_rs['id'],"'><p class='bold' id='car_title'>", $item_rs['year']," ", $item_rs['name'],"</p></a>";
                            echo            "<div class='br'></div>";
                            echo            "<a href='car_details.php?id=", $item_rs['id'],"'>";
                            echo                "<p class='price'>$", $item_rs['price'],"</p>";
                            echo                "<p class='light'>", $item_rs['odometer']," km, ", $item_rs['transmission'],", ", $item_rs['fuel'],"</p>";
                            echo                "<p class='light'>", $item_rs['brand'],", ", $item_rs['body'],"</p>";
                            echo            "</a>";
                            echo            "<a class='learn_more' href='car_details.php?id=", $item_rs['id'],"'>Learn More</a>";
                            echo        "</div>";
                            echo    "</div>";
                            echo    "<hr id='car'>";
                            echo "</div>";
                        } while ($item_rs = mysqli_fetch_assoc($item_query));
                    }
                ?>
        </div>
    </div>

    <!-- page selector -->

    <div class="page_selector_container">
    <div class="results_number" id="page_selector">
            <!-- retrives number of results -->
            <?php
                if ($number_of_results > 0) {
                    echo "<p class='bold'>Results</p>";
                    echo "<p>";
                    echo    $results_from;
                    echo    " to ";
                    echo    $results_to;
                    echo    " of ";
                    echo    $number_of_results;
                    echo "</p>";
                } else {
                    echo "<p class='bold'>";
                    echo    "No Results!";  
                    echo "</p>";
                }
            ?>
        </div>
        
         <!-- if a page has been selected sets variable to page number, else page = 1 -->
         <?php 
            if (isset($_POST['page'])) {
                $page = $_POST['page'];
            } else {
                $page = 1;
            };
            $total_pages = ceil($number_of_results/$items_per_page)
         ?>
         <!-- page selector -->
        <div class='page_selector'>
            <?php
            // if on the first page and there are more than three total pages
                if ($page == 1 AND $total_pages >= 3) {
                    echo "<button id='inactive' name='page' disabled><i class='fa-solid fa-chevron-left'></i><i class='fa-solid fa-chevron-left'></i></button>";
                    echo "<button id='inactive' name='page' disabled><i class='fa-solid fa-chevron-left'></i></button>";
                    echo "<button name='page' value='1'>1</button>";
                    echo "<button name='page' value='2'>2</button>";
                    echo "<button name='page' value='3'>3</button>";
                    // if on the first page and there are two total pages
                } else if ($page == 1 AND $total_pages == 2) {
                    echo "<button id='inactive' name='page' disabled><i class='fa-solid fa-chevron-left'></i><i class='fa-solid fa-chevron-left'></i></button>";
                    echo "<button id='inactive' name='page' disabled><i class='fa-solid fa-chevron-left'></i></button>";
                    echo "<button name='page' value='1'>1</button>";
                    echo "<button name='page' value='2'>2</button>";
                    // if on the first page and there is one total page
                } else if ($page == 1 AND $total_pages == 1) {
                    echo "<button id='inactive' name='page' disabled><i class='fa-solid fa-chevron-left'></i><i class='fa-solid fa-chevron-left'></i></button>";
                    echo "<button id='inactive' name='page' disabled><i class='fa-solid fa-chevron-left'></i></button>";
                    echo "<button name='page' value='1'>1</button>";
                    // otherwise not on first page so left arrows can be enabled
                } else {
                    echo "<button name='page' value='1'><i class='fa-solid fa-chevron-left'></i><i class='fa-solid fa-chevron-left'></i></button>";
                    echo "<button name='page' value='", $page-1,"'><i class='fa-solid fa-chevron-left'></i></button>";
                    // if on the last page, and there are more than 3 pages
                    if ($page >= $total_pages AND $page-2 >= 1) {
                        echo "<button name='page' value='", $page-2,"'>", $page-2,"</button>";
                        echo "<button name='page' value='", $page-1,"'>", $page-1,"</button>";
                        echo "<button name='page' value='", $page,"'>", $page,"</button>";
                        // if on the last page, and there are 2 pages
                    } else if ($page >= $total_pages AND $page-1 >= 1) {
                        echo "<button name='page' value='", $page-1,"'>", $page-1,"</button>";
                        echo "<button name='page' value='", $page,"'>", $page,"</button>";
                        // if on the last page, and there is one page
                    } else if ($page >= $total_pages AND $page >= 1) {
                        echo "<button name='page' value='", $page,"'>", $page,"</button>";
                        // otherwise not on first or last page so can display normally
                    } else {
                        echo "<button name='page' value='", $page-1,"'>", $page-1,"</button>";
                        echo "<button name='page' value='", $page,"'>", $page,"</button>";
                        echo "<button name='page' value='", $page+1,"'>", $page+1,"</button>";
                    }
                }
                // if on the last page disable right buttons
                if ($page >= $total_pages) {
                    echo "<button disabled id='inactive' name='page'><i class='fa-solid fa-chevron-right'></i></button>";
                    echo "<button disabled id='inactive' name='page'><i class='fa-solid fa-chevron-right'></i><i class='fa-solid fa-chevron-right'></i></button>";
                    // otherwise dont disable right buttons
                } else {
                    echo "<button name='page' value='", $page+1,"'><i class='fa-solid fa-chevron-right'></i></button>";
                    echo "<button name='page' value='", $total_pages,"'><i class='fa-solid fa-chevron-right'></i><i class='fa-solid fa-chevron-right'></i></button>";
                }
            ?>
        </div>
        </form>

    </div>
    
    <!-- footer -->
    <?php
        include 'include/footer.php';
    ?>
    <script>
        var brand_text = document.getElementById("make_text")
        var body_text = document.getElementById("body_text")
        function change_text(input) {
            if (input == 'onload') {
                var brand_inp = document.getElementById("onload_function_brand")
                var body_inp = document.getElementById("onload_function_body")
                if (body_inp != null) {
                    body_inp = document.getElementById("onload_function_body").value
                    body_text.innerText = body_inp
                }
                if (brand_inp != null) {
                    brand_inp = document.getElementById("onload_function_brand").value
                    brand_text.innerText = brand_inp
                }             
            } else {
                if (input.name == 'make') {
                    var brand_inp = input.value
                    brand_text.innerText = brand_inp
                } else {
                    var body_inp = input.value
                    body_text.innerText = body_inp
                }
            } 
        }
        change_text('onload')
    </script>
</body>
</html>