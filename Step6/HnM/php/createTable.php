<!doctype html>
<html>

<head>
	<title>Create a Table</title>
	<link rel="stylesheet" href="../css/style.css" />
</head>

<body>

	<?php

	$servername = "localhost";
	$dbname = "HnM";
	$username = "root";
	$password = "";

	/* Try MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password).
If the connection was tried and it was successful the code between braces after try is executed, if any error happened while running the code in try-block, 
the code in catch-block is executed. */
	try {
		$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Connection Was Successful</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
	}

	$sql = "CREATE TABLE Business (
		BusinessID INT PRIMARY KEY,
		BusinessAddress VARCHAR(100), 
		NumOfAddresses INT,
		BusinessName VARCHAR(35) NOT NULL,
		CostAndFees DECIMAL(7,2),
		BusinessServices CHAR(2) NOT NULL,
		NumOfCustomers INT
	);";

	try {
		$conn->exec($sql);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Table Created Successfully</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
	}

	// Close connection
	unset($conn);

	echo "<a href='../index.html'>Back to the homepage</a>";

	?>

</body>

</html>