Feature: ID-US06 - Ver Dispositivos Vinculados

Como usuario 
Quiero ver una lista de mis dispositivos inteligentes vinculados 
Para saber cuáles están activos y conectados correctamente


Scenario 01: Listado de dispositivos IoT conectados

Given el usuario accede a la sección "Dispositivos IoT"
And visualiza el siguiente listado:

|            Dispositivos Conectados               |
|--------------------------------------------------|
| Televisor       -  Encendido  -  1.5 kWh         |
| Aire Acond.     -  Apagado    -  3.2 kWh         |
| Lámpara LED     -  Encendido  -  0.4 kWh         |
| Refrigeradora   -  Encendido  -  2.1 kWh         |
|--------------------------------------------------|

When observa la lista
Then puede ver el estado y consumo actual de cada dispositivo


Scenario 02: Detalle individual de un dispositivo

Given el usuario selecciona un dispositivo de la lista (por ejemplo: "Televisor")
Then se muestra la siguiente pantalla de detalle:

|              Detalle del Dispositivo             |
|--------------------------------------------------|
| Nombre:           Televisor                      |
| Estado:           Encendido                      |
| Consumo Diario:   1.5 kWh                        |
| Día de mayor uso: Miércoles                      |
| Botón: [Automatizar con IA]                      |
|--------------------------------------------------|

And puede activar opciones de automatización o editar configuración


Scenario 03: Visualización de dispositivos por sucursal

Given que el usuario pertenece a una cuenta con múltiples sucursales
When selecciona una sucursal (por ejemplo: "Oficina Lima")
Then el sistema muestra los dispositivos vinculados a esa sede:

|              Sucursal: Oficina Lima              |
|--------------------------------------------------|
| Dispositivos: 5 conectados                       |
| Consumo total: 20.4 kWh                          |
| Promedio por dispositivo: 4.1 kWh                |
|--------------------------------------------------|

And puede comparar entre sucursales para optimizar consumo