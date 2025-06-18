Feature: ID-US07 - Vincular Dispositivo con Código QR

Como usuario, 
Quiero vincular un dispositivo utilizando métodos como búsqueda por Bluetooth, escaneo de código QR o ingreso de código manual, 
Para facilitar su conexión sin complicaciones técnicas.


Scenario 01: Escaneo exitoso de dispositivo mediante código QR

Given el usuario accede a la opción "Agregar dispositivo"
And selecciona el método "Escanear código QR"
And visualiza la siguiente pantalla:

|                Vincular Dispositivo              |
|--------------------------------------------------|
| Método: [Escanear código QR]                     | 
| Código detectado: ✔ 2312DSS                      |
|--------------------------------------------------|
|               [Vincular dispositivo]             |
|--------------------------------------------------|

When el sistema detecta el código correctamente
Then se muestra el botón para vincular
And el dispositivo se añade exitosamente a la lista


Scenario 02: Error en la lectura del código QR

Given el usuario intenta escanear un código dañado o ilegible
And se muestra lo siguiente en la pantalla:

|                Vincular Dispositivo              |
|--------------------------------------------------|
| Método: [Escanear código QR]                     | 
| Código detectado: ✖                              |
|--------------------------------------------------|
| X Código no válido o ilegible                    |
|--------------------------------------------------|

Then el sistema muestra un mensaje de error
And no permite continuar con la vinculación


Scenario 03: Vinculación manual del dispositivo por código

Given el usuario no puede escanear el QR y elige la opción manual
And completa el siguiente formulario:

|                Vincular Dispositivo              |
|--------------------------------------------------|
| Método: [Escanear código manualmente]            | 
| Ingrese código: 2312DSS                          |
|--------------------------------------------------|
|               [Vincular dispositivo]             |
|--------------------------------------------------|

When presiona el botón "Vincular dispositivo"
Then el sistema valida el código ingresado
And se confirma la vinculación exitosa