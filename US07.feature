Feature: ID-US30 - Registrar una nueva cuenta de usuario en EcoWatt

  Como nuevo usuario de EcoWatt,
  Quiero crear una cuenta con mis datos personales,
  Para acceder a las funcionalidades de la plataforma.

   Scenario 01: Acceso al formulario de registro
 
  |                     Registrate                       |
  |------------------------------------------------------|

  Given el usuario hace clic en el enlace "Regístrate".
  Then debo ser redirigido a un formulario de registro.

  Scenario 02: Registro exitoso para un nuevo usuario

  |                 Crear Cuenta                         |
  |------------------------------------------------------|
  | Nombre Completo:      Andrea Torres                  |
  | Correo Electrónico:   andrea.torres@gmail.com        |
  | Contraseña:           ********                       |
  | Confirmar Contraseña: ********                       |
  |------------------------------------------------------|
  | Tipo de registro:    (●) Hogar  ( ) Negocio          |
  |------------------------------------------------------|
  |               [Crear cuenta]                         |
  |------------------------------------------------------|

  Given el usuario accede a la página "Crear cuenta"
  And completa todos los campos requeridos (nombre, correo, contraseña y confirmación de contraseña)
  When hace clic en el botón [“Crear cuenta”]
  Then el sistema valida los datos, redirige al usuario a la página principal de la plataforma
  And le da acceso a las funcionalidades de la plataforma.

  Scenario 03: Registro con datos inválidos o incompletos

  |                 Crear Cuenta                         |
  |------------------------------------------------------|
  | Nombre Completo:      Andrea Torres                  |
  | Correo Electrónico:   andrea.torres@gmail.com        |
  | Contraseña:           ********                       |
  | Confirmar Contraseña: **********                     |
  |------------------------------------------------------|
  | Tipo de registro:    (●) Hogar  ( ) Negocio          |
  |------------------------------------------------------|
  |               [Crear cuenta]                         |
  |------------------------------------------------------|

  Given el usuario ha ingresado información inválida o incompleta (como un correo electrónico incorrecto o campo vacío)
  When presiona el botón de registro
  Then el sistema muestra un mensaje de error indicando qué campo necesita corrección
  And no permite avanzar hasta que todos los datos sean correctos.
