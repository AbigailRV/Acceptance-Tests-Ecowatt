Feature: ID-US02 - Inicio de sesión con correo y contraseña

  Como usuario registrado,
  Quiero iniciar sesión usando mi correo electrónico y contraseña,
  Para acceder a mi perfil personalizado en la aplicación.

  Scenario 01: Inicio de sesión exitoso

  |                 Iniciar sesión                   |
  |--------------------------------------------------|
  | Correo electrónico:  tu.correo@ejemplo.com       |
  | Contraseña:          ********                    |
  |--------------------------------------------------|
  | [✓] Recuérdame | ¿Olvidaste tu contraseña?       |
  |--------------------------------------------------|
  |               [Iniciar sesión]                   |
  |--------------------------------------------------|

  Given el usuario accede a la página de inicio de sesión en la landing page
  And ingresa su correo electrónico y contraseña correctamente
  When hace clic en el botón [“Iniciar sesión”]
  Then el sistema lo redirige automáticamente a la página principal del panel de usuario, donde podrá visualizar su consumo y las funcionalidades de la plataforma.

  Scenario 02: Inicio de sesión fallido por contraseña incorrecta

  |                 Iniciar sesión                   |
  |--------------------------------------------------|
  | Correo electrónico:  tu.correo@ejemplo.com       |
  | Contraseña:          ********                    |
  |--------------------------------------------------|
  | [✓] Recuérdame | ¿Olvidaste tu contraseña?       |
  |--------------------------------------------------|
  |               [Iniciar sesión]                   |
  |--------------------------------------------------|

  Given el usuario ingresa un [correo válido] pero una [contraseña incorrecta]
  When hace clic en el botón [“Iniciar sesión”]
  Then el sistema muestra un mensaje de error [“Correo y/o contraseña incorrectos”]
  And no permite el acceso al sistema
