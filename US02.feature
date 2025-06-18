Feature: ID-US02 - Inicio de Sesión

Como usuario registrado
Quiero iniciar sesión usando mi correo electrónico y contraseña
Para acceder a mi perfil personalizado en la aplicación


Scenario 01: Inicio de sesión exitoso con credenciales válidas

|                  Iniciar Sesión                  |
|--------------------------------------------------|
| Correo electrónico:  andrea.torres@gmail.com     |
| Contraseña:          ********                    |
|--------------------------------------------------|
|                 [Iniciar sesión]                 |
|--------------------------------------------------|

Given el usuario está en la pantalla "Iniciar sesión"
And ve el formulario como se muestra arriba
When ingresa sus credenciales válidas y presiona el botón
Then accede directamente a la pantalla principal de su cuenta


Scenario 02: Inicio fallido por contraseña incorrecta

|                  Iniciar Sesión                  |
|--------------------------------------------------|
| Correo electrónico:  ana.usuaria@gmail.com       |
| Contraseña:          incorrecta123               |
|--------------------------------------------------|
|                  Iniciar Sesión                  |
|--------------------------------------------------|
|          Correo y/o contraseña incorrectos       |

Given el usuario está en la pantalla "Iniciar sesión"
And completa el formulario como se muestra arriba
When presiona el botón "Iniciar sesión"
Then el sistema muestra el mensaje de error: 'Correo y/o contraseña incorrectos'


Scenario 03: Botón deshabilitado por campos vacíos

|                  Iniciar Sesión                  |
|--------------------------------------------------|
| Correo electrónico:                              |
| Contraseña:                                      |
|--------------------------------------------------|
|          [Iniciar sesión] (deshabilitado)        |
|--------------------------------------------------|

Given el usuario está en la pantalla "Iniciar sesión"
And deja los campos del formulario vacíos como se muestra arriba
Then el botón aparece deshabilitado
And el sistema no permite continuar hasta completar los campos requeridos
