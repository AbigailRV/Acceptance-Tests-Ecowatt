Feature: ID-US01 - Registro de Nuevos Usuarios

Como nuevo usuario de EcoWatt
Quiero registrarme con mis datos personales y tipo de usuario (hogar o negocio) 
Para acceder a las funcionalidades de la plataforma.


Scenario 01: Registro exitoso como usuario tipo 'Hogar'

|                 Crear Cuenta                     |
|--------------------------------------------------|
| Nombre:              Andrea Torres               |
| Correo electrónico:  andrea.torres@gmail.com     |
| Contraseña:          ********                    |
| Confirmar contraseña: ********                   |
|--------------------------------------------------|
| Tipo de usuario:  (●) Hogar   ( ) Negocio        |
| [✓] He leído los términos y condiciones          |
|--------------------------------------------------|
|               [Registrarse]                      |
|--------------------------------------------------|

Given el usuario accede a la pantalla "Crear cuenta"
And ve el formulario completo como se muestra arriba
When completa todos los campos y presiona el botón "Registrarse"
Then el sistema muestra el mensaje: `✓ Se registró correctamente`
And redirige al usuario a la pantalla principal


Scenario 02: Registro como Negocio con paso de pago

|                 Crear Cuenta                     |
|--------------------------------------------------|
| Nombre:              Carlos M.                   |
| Correo electrónico:  carlos@empresa.com          |
| Contraseña:          ********                    |
| Confirmar contraseña: ********                   |
|--------------------------------------------------|
| Tipo de usuario:  ( ) Hogar   (●) Negocio        |
| [✓] He leído los términos y condiciones          |
|--------------------------------------------------|
|               [Registrarse]                      |
|--------------------------------------------------|

Given el usuario accede a la pantalla "Crear cuenta"
And completa el formulario como se muestra arriba
When presiona "Registrarse"
Then el sistema muestra la pantalla de pago con:

> Plan Negocio - S/20
> [Usar tarjeta]
> [Confirmar pago]

And al finalizar el pago, redirige al dashboard del negocio


Scenario 03: Registro con errores de validación

|                 Crear Cuenta                     |
|--------------------------------------------------|
| Nombre:              Ana                         |
| Correo electrónico:  ana@mail.com                |
| Contraseña:          12345678                    |
| Confirmar contraseña: 1234                       |
|--------------------------------------------------|
| Tipo de usuario:  (●) Hogar   ( ) Negocio        |
| [✓] He leído los términos y condiciones          |
|--------------------------------------------------|
|       [Registrarse] (deshabilitado)              |
|--------------------------------------------------|

Given el usuario deja datos incorrectos en la pantalla "Crear cuenta"
And el formulario contiene los valores mostrados arriba
When intenta presionar "Registrarse"
Then el sistema muestra el mensaje de error en rojo:

> Las contraseñas no coinciden X