<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Cargar automáticamente las clases (requerido por Composer)
require 'vendor/autoload.php';

// Crear una nueva instancia de PHPMailer
$mail = new PHPMailer(true);

try {
    // Configuración del servidor SMTP
    $mail->isSMTP();                                          // Usar SMTP
    $mail->Host       = 'smtp.gmail.com';                     // Servidor SMTP de Gmail
    $mail->SMTPAuth   = true;                                 // Activar autenticación SMTP
    $mail->Username   = 'tu_correo@gmail.com';                // Tu correo de Gmail
    $mail->Password   = 'tu_contraseña_o_contraseña_app';     // Contraseña o contraseña de aplicación
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;       // Cifrado TLS
    $mail->Port       = 587;                                 // Puerto SMTP para TLS

    // Configuración del correo
    $mail->setFrom('tu_correo@gmail.com', 'Tu Nombre');       // Remitente
    $mail->addAddress('destinatario@example.com', 'Usuario'); // Destinatario

    $mail->isHTML(true);                                     // Enviar en formato HTML
    $mail->Subject = 'Clave de Recuperación';
    $mail->Body    = 'Tu clave de recuperación es <b>123456</b>.';
    $mail->AltBody = 'Tu clave de recuperación es 123456.';  // Texto plano si no se permite HTML

    // Enviar el correo
    $mail->send();
    echo 'Correo enviado correctamente.';
} catch (Exception $e) {
    echo "El correo no se pudo enviar. Error: {$mail->ErrorInfo}";
}
?>
