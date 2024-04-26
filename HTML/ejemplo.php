<?php
   
   $nombreServidor = "localhost";
   $baseDatos = "Ejemplo";
   $nombreUsuario = "paginawebfinal";
   $password = "Usuario";
   
   // Se crea la conexión
   
   $conn = new mysqli($nombreServidor, $nombreUsuario, $password, $baseDatos);
   
   // Se comprueba que la conexión es correcta
   
    if (!$conn) {
       die("Connection failed: " . mysqli_connect_error());
    }
    

    mysqli_close($conn);
?>