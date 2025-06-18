Feature: ID-US08 - Canje de Recompensas

Como usuario
Quiero canjear mis puntos acumulados por beneficios 
Para obtener recompensas a cambio de mi ahorro


Scenario 01: Canje exitoso de recompensa con puntos suficientes

Given el usuario accede a la sección "Recompensas"
And visualiza el siguiente estado:

|                  Recompensas                     |
|--------------------------------------------------|
| Tus puntos: 500                                  |
|--------------------------------------------------|
| 25% Descuento en PANASONIC | Costo: 1500 pts     |
|                   [Canjear]                      |
|--------------------------------------------------|

When presiona el botón "Canjear"
Then el sistema muestra:

>  Recompensa canjeada con éxito  
>  Revisa tu correo para más instrucciones

And se descuentan los puntos correspondientes


Scenario 02: Canje fallido por puntos insuficientes

Given el usuario tiene solo 120 puntos
And ve la siguiente pantalla:

|                  Recompensas                     |
|--------------------------------------------------|
| Tus puntos: 100                                  |
|--------------------------------------------------|
| Foco LED gratis | Costo: 200 pts                 |
|            [Canjear] (deshabilitado)             |
|--------------------------------------------------|

Then el botón "Canjear" está deshabilitado
And se muestra un mensaje de advertencia:

>  No tienes suficientes puntos para esta recompensa


Scenario 03: Historial de canjes realizados

Given el usuario accede a la pestaña "Historial"
Then el sistema le muestra:

|            Historial de Recompensas              |
|--------------------------------------------------|
| 14/06/2025 - 25% descuento PANASONIC - 1500 pts  |
| 01/06/2025 - Cupón S/10 energía - 150 pts        |
|--------------------------------------------------|

And puede consultar sus canjes anteriores y verificar fechas