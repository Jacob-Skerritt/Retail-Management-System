<?PHP
//Add the validation function
require_once '../session.php';

//Create variables for the information submitted by the user
$id = filter_input(INPUT_POST, 'id');
$admin_privilege= filter_input(INPUT_POST,'admin_privilege');
$password = filter_input(INPUT_POST,'password', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

if (strlen($password) <=8) {
    echo "<SCRIPT LANGUAGE='JavaScript'> alert('Oopsy , Password must be at least 8 characters!'); </SCRIPT>";
    include '../employee.php';
    
}
else
{
    $uppercase = preg_match('@[A-Z]@', $password);
    $lowercase = preg_match('@[a-z]@', $password);
    $number = preg_match('@[0-9]@', $password);
}

if(!$uppercase || !$lowercase || !$number)
{
    echo 'Length of password is insufficent';
    exit();
    
}

//Hash the password
$hashed_password = password_hash($password, PASSWORD_DEFAULT);


//Deal with errors
if ($id == null || $hashed_password = null || $admin_privilege == null) {
    $error = "Invalid Employee data. Check all fields and try again.";
    include('error.php');
} else {
    require_once('database.php');


//Create the SQL insert statement
$query='INSERT INTO employees '
        . '(password, admin_privilege) '
        . 'VALUES '
        . '(:password, :admin_privilege)';

//Use PDO to sanatise the input
$statement = $db->prepare($query);

//Bind the variable to the placeholders in the query
$statement->bindValue(':id', $id);
$statement->bindValue(':admin_privilege', $admin_privilege);
   

//Add the user to the database
$statement->execute();
$statement->closeCursor();
}

?>