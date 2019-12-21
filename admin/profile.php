<?php
include ('includes/connection.php');
include ('includes/adminheader.php');
if (isset($_SESSION['username'])) {
	$username = $_SESSION['username'];
	$query = "SELECT * FROM users WHERE username = '$username'" ; 
	$result= mysqli_query($conn , $query) or die (mysqli_error($conn));
	if (mysqli_num_rows($result) > 0 ) {
		$row = mysqli_fetch_array($result);
		$userid = $row['id'];
		$usernm = $row['username'];
		$userpassword = $row['password'];
		$useremail = $row['email'];
		$userfirstname = $row['firstname'];
		$userlastname = $row['lastname'];

	}

if (isset($_POST['update'])) {
require "../gump.class.php";
$gump = new GUMP();
$_POST = $gump->sanitize($_POST); 


$gump->validation_rules(array(
	'firstname'   => 'required|alpha|max_len,30|min_len,2',
	'lastname'    => 'required|alpha|max_len,30|min_len,1',
	'email'       => 'required|valid_email',
	'currentpassword' => 'required|max_len,50|min_len,6',
	'newpassword'    => 'max_len,50|min_len,6',
));
$gump->filter_rules(array(
	'firstname' => 'trim|sanitize_string',
	'lastname' => 'trim|sanitize_string',
	'currentpassword' => 'trim',
	'newpassword' => 'trim',
	'email'    => 'trim|sanitize_email',
	));
$validated_data = $gump->run($_POST);
if($validated_data === false) {
	?>
	<center><font color="red" > <?php echo $gump->get_readable_errors(true); ?> </font></center>
	<?php
}

else if (!password_verify($validated_data['currentpassword'] ,  $userpassword))   
{
	echo  "<center><font color='red'>Current password is wrong! </font></center>";
}
else if (empty($_POST['newpassword'])) {
	$userfirstname = $validated_data['firstname'];
      $userlastname = $validated_data['lastname'];
      $useremail = $validated_data['email'];
      $updatequery1 = "UPDATE users SET firstname = '$userfirstname' , lastname='$userlastname' , email='$useremail' WHERE id = '$userid' " ;
      $result2 = mysqli_query($conn , $updatequery1) or die(mysqli_error($conn));
if (mysqli_affected_rows($conn) > 0) {
	echo "<script>alert('Perfil de Usuario Actualizado Satisfactoriamente');</script>";
}
else {
	echo "<script>alert('Ocurrió un error. Intente nuevamente!');</script>";
}
}
else if (isset($_POST['newpassword']) &&  ($_POST['newpassword'] !== $_POST['confirmnewpassword'])) 
{
	echo  "<center><font color='red'>Nueva contraseña y Confirmar nueva contraseña no coinciden </font></center>";
	
}
else {
      $userfirstname = $validated_data['firstname'];
      $userlastname = $validated_data['lastname'];
      $useremail = $validated_data['email'];
      $pass = $validated_data['newpassword'];
      $userpassword = password_hash("$pass" , PASSWORD_DEFAULT);

$updatequery = "UPDATE users SET password = '$userpassword', firstname='$userfirstname' , lastname= '$userlastname' , email= '$useremail' WHERE id='$userid'";
$result1 = mysqli_query($conn , $updatequery) or die(mysqli_error($conn));
if (mysqli_affected_rows($conn) > 0) {
	echo "<script>alert('Perfil actualizado satisfactoriamente');</script>";
}
else {
	echo "<script>alert('Se produjo un error. Intenta nuevamente!');</script>";
}
}
}
}
?>
<div id="wrapper">

        
       <?php include 'includes/adminnav.php';?>
        <div id="page-wrapper">

            <div class="container-fluid">

                
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Bienvenid@ al Panel de tu Perfil 
                            <b><?php echo $_SESSION['firstname']; ?></b>
                        </h1>
<form role="form" action="" method="POST" enctype="multipart/form-data">

<div class="form-group">
		<label for="user_title">Usuario</label>
		<input type="text" name="username" class="form-control" value="<?php echo $username; ?>" readonly>
	</div>



	<div class="form-group">
		<label for="user_author">Nombre</label>
		<input type="text" name="firstname" class="form-control" value="<?php echo $userfirstname; ?>" required>
	</div>

	<div class="form-group">
		<label for="user_status">Apellido</label>
		<input type="text" name="lastname" class="form-control" value="<?php echo $userlastname; ?>" required>
	</div>
	<div class="form-group">
		<label for="user_tag">Correo</label>
		<input type="email" name="email" class="form-control" value="<?php echo $useremail; ?>" required>
	</div>
	<div class="form-group">
		<label for="usertag">Contraseña Actual</label>
		<input type="password" name="currentpassword" class="form-control" placeholder="Ingrese su actual contraseña" required>
	</div>
	<div class="form-group">
		<label for="usertag">Nueva Contraseña <font color='brown'> (Cambiar tu contraseña es opcional)</font></label>
		<input type="password" name="newpassword" class="form-control" placeholder="Ingrese nueva contraseña">
	</div>
	<div class="form-group">
		<label for="usertag">Confirmar Contraseña</label>
		<input type="password" name="confirmnewpassword" class="form-control" placeholder="Confirme su nueva contraseña" >
	</div>
<hr>


<button type="submit" name="update" class="btn btn-primary" value="Update User">Actualizar Usuario</button>

                    </div>
                </div>
                

            </div>
            

        </div>
        
   <?php 'includes/admin_footer.php';?> -->
    </div>
    
    <script src="js/jquery.js"></script>

    
    <script src="js/bootstrap.min.js"></script>

</body>

</html>







