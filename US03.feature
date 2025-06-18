Feature: ID-US03 - Visualización del Consumo Energético

Como usuario
Quiero visualizar mi consumo energético actual en tiempo real 
Para tomar decisiones inmediatas y reducir el gasto energético


Scenario 01: Visualización del consumo diario y mensual

|                Dashboard EcoWatt                 |
|--------------------------------------------------|
| Consumo Diario:     1.75 kWh                     |
| Consumo Mensual:    172.00 kWh                   |
| Estado:             Consumo normal               |
|--------------------------------------------------|

Given el usuario accede al dashboard principal
When visualiza su consumo actualizado
Then el sistema muestra los datos diarios y mensuales correctamente


Scenario 02: Acceso a detalle de consumo por hora

|           Detalle de Consumo por Hora            |
|--------------------------------------------------|
| 6:00 - 7:00:  0.12 kWh                           |
| 7:00 - 8:00:  0.24 kWh                           |
| 8:00 - 9:00:  0.35 kWh                           |
|--------------------------------------------------|

Given el usuario accede al módulo de detalle por hora
When navega entre las franjas horarias
Then el sistema muestra el desglose de consumo por hora del día


Scenario 03: Comparación de consumo entre oficinas


| Sucursal  | Dispositivos activos | Consumo total | 
|--------------------------------------------------|
| Oficina 1 |          6           |   12,3 kwh    |
| Oficina 2 |          4           |   12,3 kwh    |
| Oficina 3 |          3           |   12,3 kwh    |

Given el usuario tiene más de una sucursal registrada
When accede a la sección de comparativas
Then el sistema le muestra el consumo por oficina
