Feature: ID-US04 - Indicadores de Sobreconsumo

Como usuario 
Quiero recibir alertas visuales si mi consumo actual es más alto de lo habitual 
Para saber cuándo estoy excediéndome y reaccionar a tiempo


Scenario 01: Consumo normal con estado verde

|                  Dashboard                         |
|----------------------------------------------------|
| Estado actual: Consumo normal                      |
| Recomendación: Sigue así                           |

Given el usuario accede a su panel principal
When el consumo está dentro del límite esperado
Then se muestra un estado verde con mensaje positivo


Scenario 02: Alerta visual de sobreconsumo

|                  Dashboard                         |
-----------------------------------------------------
| Estado actual: Sobreconsumo detectado              |
| Mensaje: Estás consumiendo más de lo habitual      |

Given el sistema detecta que el consumo ha aumentado
When el usuario accede al dashboard
Then se muestra una alerta roja indicando sobreconsumo


Scenario 03: Notificación emergente por sobreuso

|              Notificación Emergente               |
|---------------------------------------------------|
| Tu consumo ha superado el límite diario           |
| Revisa tus dispositivos activos                   |

Given el sistema calcula un pico de consumo
Then se muestra una notificación emergente de advertencia
