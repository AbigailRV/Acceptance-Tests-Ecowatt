Feature: ID-US10 - Cambio de Plan de Suscripción

Como usuario
Quiero cambiar mi plan de suscripción
Para acceder a nuevas funcionalidades según mis necesidades.

Scenario 01: Cambio exitoso de plan Hogar a Negocio

Given el usuario accede a la sección "Mi Plan"
And visualiza la siguiente información:

|                 Tu Plan Actual                   |
|--------------------------------------------------|
| Plan: Hogar                                      |
| Precio: Gratis                                   |
|--------------------------------------------------|
| Opciones Disponibles:                            |
| Cambiar a Plan Negocio                           |
| Precio: S/20 mensual                             |
|--------------------------------------------------|
|               [Actualizar Plan]                  |
|--------------------------------------------------|

When selecciona "Plan Negocio" y presiona "Actualizar Plan"
Then el sistema redirige a la pasarela de pago
And al completar el pago, muestra:

>  Tu suscripción ha sido actualizada exitosamente


Scenario 02: Cancelación del cambio de plan antes del pago

Given el usuario inicia el proceso para cambiar de plan
And llega a la pantalla de confirmación de pago
When decide cancelar la operación
Then el sistema muestra:

>  Cambios no realizados  
>  Tu plan actual se mantiene sin modificaciones

And redirige al usuario al panel principal


Scenario 03: Visualización de beneficios por tipo de plan

Given el usuario entra a la sección “Planes y Beneficios”
Then se muestra la tabla comparativa:

|             Comparativa de Planes                 |
|---------------------------|-----------------------|
| Plan Hogar                | Plan Negocio          |
|---------------------------|-----------------------|
| Gráfico básico de consumo | Predicción avanzada   |
| 1 usuario                 | Multiusuario          |
| Sin costo                 | S/20 mensual          |

And el usuario puede evaluar opciones antes de confirmar cambios
