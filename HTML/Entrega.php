<?php
   
   $nombreServidor = "localhost";
   $baseDatos = "Ejemplo";
   $nombreUsuario = "Usuario";
   $password = "Usuario";
   
   // Se crea la conexión
   
   $conn = new mysqli($nombreServidor, $nombreUsuario, $password, $baseDatos);
   
   // Se comprueba que la conexión es correcta
   
    if (!$conn) {
       die("Connection failed: " . mysqli_connect_error());
    }
  echo "Conexión correcta";

 // $sentenciaSQL="INSERT INTO Localidad VALUES(3,'Córdoba')";

    $sentenciaSQL="INSERT INTO Entregas VALUES(,2024-03-12 19:30,234234234,'45kg','Arbol',4,4)";
    if (!$conn->query($sentenciaSQL)) {
      
      echo "Falló la inserción de datos en la tabla: (" . $conn->errno . ") " . $conn->error;
    
    }
    echo $sentenciaSQL;
    mysqli_close($conn);
?>