<?php include ('includes/connection.php'); 
include "includes/adminheader.php";
if (isset($_SESSION['role'])) {
$currentrole = $_SESSION['role'];
}
if ( $currentrole == 'user') {
echo "<script> alert('SOLO EL ADMINISTRADOR PUEDE VER USUARIOS');
window.location.href='./index.php'; </script>";
}
else if ($currentrole == 'superadmin') {
    ?>
 

    <div id="wrapper">

    
    <?php include "includes/adminnav.php"; ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                
                <div class="row">
                    <div class="col-lg-12">

                        
                        <h1 class="page-header">
                            Usuarios
                        </h1>



    <table class="table table-bordered table-hover">
    <thead>
        <tr>
            <th>Id</th>
            <th>Usuario</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Correo</th>
            <th>Rol</th>
            <th>Cambiar Rol</th>
            <th>Borrar</th>
        </tr>
    </thead>

    <tbody>
        
        <?php 
            
            $query = "SELECT * FROM users";
            $select_users = mysqli_query($conn, $query) or die(mysqli_error($conn));
            if (mysqli_num_rows($select_users) > 0 ) {
            while ($row = mysqli_fetch_array($select_users)) {
                $user_id = $row['id'];
                $username = $row['username'];
                $user_firstname = $row['firstname'];
                $user_lastname = $row['lastname'];
                $user_email = $row['email'];
                $user_role = $row['role'];
                echo "<tr>";
                echo "<td>$user_id</td>";
                echo "<td>$username</td>";
                echo "<td>$user_firstname</td>";
                echo "<td>$user_lastname</td>";
                echo "<td>$user_email</td>";
                echo "<td>$user_role</td>";
            echo "<td><a href='users.php?change_to_admin=$user_id''>Volver Administrador</a></td>";
                echo "<td><a onClick=\"javascript: return confirm('¿Estás seguro de que deseas eliminar a este usuario?')\" href='users.php?delete=$user_id'><i class='fa fa-times fa-lg'></i>Borrar</a></td>";
                echo "</tr>";
             }
        ?>

    </tbody>
 </table>

<?php 
}

    if (isset($_GET['delete'])) {
        $the_user_id = $_GET['delete'];
        $query0 = "SELECT role FROM users WHERE id = '$the_user_id'";
        $result = mysqli_query($conn , $query0) or die(mysqli_error($conn));
        if (mysqli_num_rows($result) > 0 ) {
            $row = mysqli_fetch_array($result);
            $id1 = $row['role'];
        }
        if ($id1 == 'superadmin') {
            echo "<script>alert('El Perfil Super Administrador no puede ser cambiado');</script>";
        }
        else {

        $query = "DELETE FROM users WHERE id = '$the_user_id'";

        $delete_query = mysqli_query($conn, $query) or die (mysqli_error($conn));
        if (mysqli_affected_rows($conn) > 0 ) {
            echo "<script>alert('Usuario borrado satisfactoriamente');
            window.location.href= 'users.php';</script>";
        }
    }
}

    
    if (isset($_GET['change_to_admin'])) {
        $the_user_id = $_GET['change_to_admin'];

        $query0 = "SELECT role FROM users WHERE id = '$the_user_id'";
        $result = mysqli_query($conn , $query0) or die(mysqli_error($conn));
        if (mysqli_num_rows($result) > 0 ) {
            $row = mysqli_fetch_array($result);
            $id1 = $row['role'];
        }
        if ($id1 == 'admin') {
            echo "<script>alert('EL USUARIO YA ES ADMINISTRADOR');</script>";
        }
        else if ($id1 == 'superadmin') {
            echo "<script>alert('No se puede cambiar el rol de superadministrador');</script>";
        }
else {
        $query = "UPDATE users SET role = 'admin' WHERE id = '$the_user_id'";

        $change_to_admin_query = mysqli_query($conn, $query) or die (mysqli_error($conn));
         if (mysqli_affected_rows($conn) > 0 ) {
            echo "<script>alert('Usuario cambiado a perfil Administrador con éxito');
            window.location.href= 'users.php'; </script>";
        }
    }
}
    ?>
    </div>
 </div>
 </div>
 </div>
 </div>
 <?php 
}
else {
    ?>
    <div id="wrapper">

    
    <?php include "includes/adminnav.php"; ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">


                        <h1 class="page-header">
                            All Users
                        </h1>



    <table class="table table-bordered table-hover">
    <thead>
        <tr>
            
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Correo</th>
            <th>Rol</th>
            
        </tr>
    </thead>

    <tbody>
        
        <?php 
            
            $query = "SELECT * FROM users";
            $select_users = mysqli_query($conn, $query) or die(mysqli_error($conn));
            if (mysqli_num_rows($select_users) > 0 ) {
            while ($row = mysqli_fetch_array($select_users)) {
                $user_id = $row['id'];
                $username = $row['username'];
                $user_firstname = $row['firstname'];
                $user_lastname = $row['lastname'];
                $user_email = $row['email'];
                $user_role = $row['role'];
                echo "<tr>";
                echo "<td>$user_firstname</td>";
                echo "<td>$user_lastname</td>";
                echo "<td>$user_email</td>";
                echo "<td>$user_role</td>";
                echo "</tr>";
             }
        ?>

    </tbody>
 </table>

<?php 
}
    ?>
    </div>
 </div>
 </div>
 </div>
 </div>

<?php

}
?>
    <?php include ('includes/adminfooter.php');
    ?>

