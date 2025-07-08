Feature: ID-US29 - Acceso al formulario de inicio de sesión desde la landing page

Como visitante de la landing page de EcoWatt, 
quiero poder acceder de forma clara al formulario de inicio de sesión, 
para ingresar a mi cuenta existente y comenzar a utilizar la plataforma..

  Scenario 01: Acceso al formulario de inicio de sesión desde la landing page

  |              Formulario de Inicio de Sesión          |
  |------------------------------------------------------|
  | Correo Electrónico:  tu.correo@ejemplo.com           |
  | Contraseña:          ********                        |
  |      [✓] Recuérdame | ¿Olvidaste tu contraseña?      |
  |------------------------------------------------------|
  |            [✓] Google     | Microsoft                |
  |------------------------------------------------------|
  |                   [Iniciar sesión]                   |
  |------------------------------------------------------|

  Given el usuario se encuentra en la landing page
  When el usuario selecciona el botón de inicio de sesión
  Then el sistema muestra con campos para Correo Electrónico y Contraseña, 
  junto con opciones de inicio de sesión alternativo a través de Google y Microsoft.
  And debe haber un enlace claro para "Recordar contraseña" y para "Registrarse".
