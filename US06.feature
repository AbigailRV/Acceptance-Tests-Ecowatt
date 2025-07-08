Feature: ID-US29 - Acceder al formulario de inicio de sesión desde la landing page

  Como visitante de la landing page de EcoWatt,
  Quiero poder acceder de forma clara al formulario de inicio de sesión,
  Para ingresar a mi cuenta existente y comenzar a utilizar la plataforma.

  Scenario 01: Visualización del formulario de inicio de sesión

  Dado que soy un usuario que visita la landing page de EcoWatt
  Cuando accedo a la URL principal del sitio y doy clic en el botón o enlace de "Iniciar Sesión"
  Entonces debo ver un formulario con campos para Correo Electrónico y Contraseña, junto con opciones de inicio de sesión alternativo a través de Google y Microsoft
  Y debe haber un enlace claro para "Recordar contraseña" y para "Registrarse".

  Scenario 02: Inicio de sesión exitoso

  Dado que soy un usuario registrado con credenciales válidas
  Cuando ingreso mi correo electrónico y contraseña correctamente en el formulario de inicio de sesión y presiono "Iniciar sesión"
  Entonces debo ser redirigido al dashboard o página principal de la aplicación de EcoWatt.
