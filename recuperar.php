<?php
session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['txtEmail'])) {
        $correo = $_POST['txtEmail'];
        // Generar una clave de recuperación aleatoria
        $claveRecuperacion = bin2hex(random_bytes(4));
        
        // Enviar la clave al correo del usuario
        // Implementar el envío del correo aquí (mail(), PHPMailer, u otra librería)
        // Ejemplo simple usando mail():
        // mail($correo, "Recuperación de contraseña", "Tu clave de recuperación es: $claveRecuperacion");
        
        // Guardar la clave y correo en la sesión para validación posterior
        $_SESSION['claveRecuperacion'] = $claveRecuperacion;
        $_SESSION['emailRecuperacion'] = $correo;
        
        echo "<script>alert('Se ha enviado una clave de recuperación a su correo.');</script>";
    } elseif (isset($_POST['txtClave'])) {
        $claveIngresada = $_POST['txtClave'];
        if ($claveIngresada === $_SESSION['claveRecuperacion']) {
            header('Location: nueva_clave.php');
            exit();
        } else {
            echo "<script>alert('La clave ingresada es incorrecta.');</script>";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Recuperar Contraseña</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body class="d-flex align-items-center justify-content-center vh-100 bg-light">
<div class="card w-50">
  <div class="card-body">
    <h3 class="card-title text-center">Recuperar Contraseña</h3>
    <p class="text-center">Ingrese su correo para recibir una clave de recuperación.</p>
    <form method="POST">
      <div class="form-group">
        <label for="txtEmail">Correo Electrónico</label>
        <input type="email" name="txtEmail" id="txtEmail" class="form-control" placeholder="Ingrese su correo" required>
      </div>
      <button type="submit" class="btn btn-primary btn-block">Enviar Clave</button>
    </form>

    <hr>
    <p class="text-center">Ingrese la clave de recuperación enviada a su correo.</p>
    <form method="POST">
      <div class="form-group">
        <label for="txtClave">Clave de Recuperación</label>
        <input type="text" name="txtClave" id="txtClave" class="form-control" placeholder="Ingrese la clave" required>
      </div>
      <button type="submit" class="btn btn-success btn-block">Validar Clave</button>
    </form>
  </div>
</div>
</body>
</html>
