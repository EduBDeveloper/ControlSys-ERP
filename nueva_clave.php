<?php
session_start();
if (!isset($_SESSION['claveRecuperacion'])) {
    header('Location: recuperar.php');
    exit();
}
if (isset($_POST['btnCambiar'])) {
    $claveIngresada = $_POST['txtClave'];
    $nuevaPassword = $_POST['txtNuevaPassword'];
    if ($claveIngresada === $_SESSION['claveRecuperacion']) {
        // Aquí agregarías el código para actualizar la contraseña en la base de datos
        // Por ejemplo: UPDATE usuarios SET password = PASSWORD('$nuevaPassword') WHERE email = $_SESSION['emailRecuperacion'];
        unset($_SESSION['claveRecuperacion'], $_SESSION['emailRecuperacion']);
        echo "<script>alert('Contraseña actualizada exitosamente'); window.location.href='login.php';</script>";
    } else {
        echo "<script>alert('Clave de recuperación incorrecta');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cambiar Contraseña</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body class="d-flex align-items-center justify-content-center vh-100 bg-light">
<div class="card w-50">
  <div class="card-body">
    <h3 class="card-title text-center">Cambiar Contraseña</h3>
    <form method="POST">
      <div class="form-group">
        <label for="txtClave">Clave de Recuperación</label>
        <input type="text" name="txtClave" id="txtClave" class="form-control" placeholder="Ingrese la clave recibida" required>
      </div>
      <div class="form-group">
        <label for="txtNuevaPassword">Nueva Contraseña</label>
        <input type="password" name="txtNuevaPassword" id="txtNuevaPassword" class="form-control" placeholder="Ingrese su nueva contraseña" required>
      </div>
      <button type="submit" name="btnCambiar" class="btn btn-primary btn-block">Cambiar Contraseña</button>
    </form>
  </div>
</div>
</body>
</html>
