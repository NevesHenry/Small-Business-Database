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
        $sql = "SELECT EmployeeID,StartDate,BusinessID,Salary FROM Employee WHERE BusinessID = '" . $_POST['bID'] . "'";

        $stmnt = $conn->prepare($sql);

        $stmnt->execute();
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $row = $stmnt->fetch();
        if ($row) {
            echo '<table>';
            echo '<tr> <th>Employee ID</th> <th>StartDate</th> <th>BusinessID</th> <th>Salary</th> </tr>';
            do {
                echo '<tr><td>' . $row['EmployeeID'] . '</td><td>' . $row['StartDate'] . '</td><td>' . $row['BusinessID'] . '</td>
                <td>' . $row['Salary'] . '</td></tr>';
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