Feature: ID-US41 - Acceso al formulario de contacto

  Como visitante de la landing page de EcoWatt,
  Quiero acceder a un formulario de contacto,
  Para poder enviar dudas o sugerencias.

  Scenario 1: Usuario accede al formulario mediante scroll

  |                 Formulario de Contacto               |
  |------------------------------------------------------|
  | Nombre:             Andrea Torres                    |
  | Correo Electrónico: andrea.torres@gmail.com          |
  | Teléfono:           123456789                        |
  | Mensaje:            ¿Cómo puedo reducir mi consumo?  |
  |------------------------------------------------------|
  |               [Enviar mensaje]                       |
  |------------------------------------------------------|

  Given que el usuario está navegando por la landing
  When hace scroll hacia la sección de contacto
  Then el sistema muestra el formulario con los campos: nombre, teléfono, correo, mensaje
  And un botón de envío claramente visible

  Scenario 2: Usuario accede al formulario desde el navbar

  |                 Formulario de Contacto               |
  |------------------------------------------------------|
  | Nombre:             Andrea Torres                    |
  | Correo Electrónico: andrea.torres@gmail.com          |
  | Teléfono:           123456789                        |
  | Mensaje:            ¿Cómo puedo reducir mi consumo?  |
  |------------------------------------------------------|
  |               [Enviar mensaje]                       |
  |------------------------------------------------------|

  Given que el usuario visualiza el menú de navegación superior
  When hace clic en el botón “Contáctanos”
  Then el sistema hace scroll automático hacia la sección del formulario de contacto
  And se muestran los campos: nombre, teléfono, correo, mensaje
  And un botón de envío claramente visible
