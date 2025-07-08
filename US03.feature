Feature: ID-US06 - Visualización del consumo actual en tiempo real

  Como usuario,
  Quiero visualizar mi consumo energético actual en tiempo real,
  Para tomar decisiones inmediatas y reducir el gasto energético.

  Scenario 01: Visualización inicial del consumo

  |                 Consumo Actual                   |
  |--------------------------------------------------|
  | Consumo acumulado diario:      15 kWh            |
  | Consumo acumulado mensual:    450 kWh            |
  |--------------------------------------------------|
  |               [Ver detalles]                     |
  |--------------------------------------------------|

  Given que el usuario ha iniciado sesión correctamente
  And se encuentra en la sección de "Inicio"
  When el sistema carga los datos correspondientes
  Then se debe mostrar en un bloque destacado el consumo acumulado diario y el consumo acumulado mensual.

  Scenario 02: Actualización automática del consumo

  |                 Consumo Actual                   |
  |--------------------------------------------------|
  | Consumo acumulado diario:      16 kWh            |
  | Consumo acumulado mensual:    451 kWh            |
  |--------------------------------------------------|
  |               [Ver detalles]                     |
  |--------------------------------------------------|

  Given que el usuario permanece en la sección de "Inicio"
  And el sistema detecta cambios en el consumo energético
  When transcurren 10 segundos
  Then los valores mostrados en pantalla deben actualizarse automáticamente sin necesidad de recargar la página.
