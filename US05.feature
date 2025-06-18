Feature: ID-US05 - Predicción de Consumo

Como usuario
Quiero visualizar una predicción del consumo del día basada en mis hábitos recientes
Para anticipar si estoy en riesgo de sobreconsumo


Scenario 01: Visualización de predicción semanal

|                Predicción Semanal                |
|--------------------------------------------------|
| Lunes:     1.70 kWh                              |
| Martes:    1.85 kWh                              |
| Miércoles: 1.95 kWh                              |
|--------------------------------------------------|

Given el usuario accede a la pestaña de 'Predicción'
When el sistema carga los datos históricos
Then se muestra una estimación diaria para los próximos días


Scenario 02: Recomendaciones automáticas según predicción

|                 Recomendaciones                  |
|--------------------------------------------------|
| Tu consumo estimado aumentará el jueves          |
| Sugerencia: Desconecta el aire acondicionado     |

Given que el sistema detecta una predicción elevada
Then se muestran recomendaciones personalizadas para reducir el consumo


Scenario 03: Cambio dinámico del gráfico según filtros

|                 Gráfico dinámico                 |
|--------------------------------------------------|
| Filtro: [Esta semana]  ⌄                         |
| Gráfico cambia automáticamente                   |

Given que el usuario selecciona un nuevo filtro temporal
When se aplica el filtro
Then el sistema actualiza el gráfico con nuevos valores