<?php
	$conn = mysqli_connect('ihost.it.kmitl.ac.th', 'it63070039_food', 'food1234', 'it63070039_food');

	$name = $_POST['Name'];
	$comment = $_POST['Kcal'];
	$id = $_POST['id'];

    $sql = 'UPDATE Fastfood SET Name = "'.$name.'", Comment = "'.$comment.'" WHERE ID = '.$id.'';
    
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>

<body>
    <div class="container mt-5 text-center">
      
            <h3>
                <?php
                    if (mysqli_query($conn, $sql)) {
                        echo "Update Completed";
                    } else {
                        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                    }
                    mysqli_close($conn);
                ?>
            </h3>
            <a href="menu.php" class="btn btn-light mt-3">BACK</a>
       
    </div>
</body>

</html>
