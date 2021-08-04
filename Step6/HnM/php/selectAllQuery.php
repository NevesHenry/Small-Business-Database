<!doctype html>
<html>

<head>
    <title>Display Records of a table</title>
    <link rel="stylesheet" href="../css/style.css" />
</head>

<body>

    <?php
    $servername = "localhost";
    $dbname = "HnM";
    $username = "root";
    $password = "";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "<p style='color:green'>Connection Was Successful</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'> Connection Failed: " . $err-> getMessage() . "</p>\r\n";
    }

    try {
        $sql = "SELECT  BusinessID, BusinessAddress, NumOfAddresses, BusinessName, CostAndFees, BusinessServices, NumOfCustomers FROM Business";
        $stmnt = $conn->prepare($sql);    // read about prepared statement here: https://www.w3schools.com/php/php_mysql_prepared_statements.asp

        $stmnt->execute();
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $row = $stmnt->fetch();  // fetches the first row of the table
        if ($row) {      // if there is any result from the query
            echo '<table>';
            echo '<tr> <th>BusinessID</th> <th>Business Address</th> <th>NumOfAddr</th> <th>Business Name</th> <th>Cost And Fees</th> 
                <th>Business Services</th> <th>Number Of Customers</th> </tr> ';
            do {
                echo '<tr><td>' . $row['BusinessID'] . '</td><td>' . $row['BusinessAddress'] . '</td><td>' . $row['NumOfAddresses'] . '</td>
                <td>' . $row['BusinessName'] . '</td><td>' . $row['CostAndFees'] . '</td><td>' . $row['BusinessServices'] . '</td><td>' . $row['NumOfCustomers'] . '</td></tr>';
                
            } while ($row = $stmnt->fetch());     // fetches another row from the query result, until we reach to the end of the result
            echo '</table>';
        } else {
            echo "<p> No Record Found!</p>";
        }
    } catch (PDOException $err) {
        echo "<p style='color:red'>Record Delete Failed: " . $err->getMessage() . "</p>\r\n";
    }
    // Close connection
    unset($conn);

    echo "<a href='../index.html'>Back to the homepage</a>";

    ?>
</body>

</html>