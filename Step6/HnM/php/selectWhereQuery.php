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
        echo "<p style='color:red'> Connection Failed: " . $err->getMessage() . "</p>\r\n";
    }

    try {
        $sql = "SELECT BusinessID,BusinessAddress,BusinessName,CostAndFees,BusinessServices,NumOfCustomers FROM Business WHERE NumOfCustomers >= '" . $_POST['numOfCusto'] . "'";

        $stmnt = $conn->prepare($sql);

        $stmnt->execute();
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $row = $stmnt->fetch();
        if ($row) {
            echo '<table>';
            echo '<tr> <th>Business ID</th> <th>Business Address</th> <th>Business Name</th> <th>Cost And Fees</th> <th>Business Services</th> <th>Number Of Customers</th></tr>';
            do {
                echo '<tr><td>' . $row['BusinessID'] . '</td><td>' . $row['BusinessAddress'] . '</td><td>' . $row['BusinessName'] . '</td>
                <td>' . $row['CostAndFees'] . '</td><td>' . $row['BusinessServices'] . '</td><td>' . $row['NumOfCustomers'] . '</td></tr>';
            } while ($row = $stmnt->fetch());
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