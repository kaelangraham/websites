<?php
      // location and info of database
      $dbconnect = mysqli_connect("localhost", "root", "root", "2024year12_kaelangraham");

      // if can't find or connect to database prints error
      if (mysqli_connect_errno()) {
        echo "connection failed:".mysqli_connect_errno();
      }
    ?>