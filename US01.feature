Feature: ID-US06 - Visualización del consumo actual en tiempo real

  Como usuario,
  Quiero visualizar mi consumo energético actual en tiempo real,
  Para tomar decisiones inmediatas y reducir el gasto energético.

  Scenario 01: Visualización inicial del consumo

  |                 Consumo de Energia                   |
  |------------------------------------------------------|
  | Consumo Acumulado Diario:       2.33 kWh             |
  | Consumo Acumulado Mensual:      168 kWh              |
  |------------------------------------------------------|


  Given el usuario ha iniciado sesión correctamente
  And se encuentra en la sección "Inicio"
  When el sistema carga los datos correspondientes
  Then se debe mostrar en un bloque destacado el consumo acumulado diario y el consumo acumulado mensual.

  Scenario 02: Actualización automática del consumo

  |                 Consumo de Energia                   |
  |------------------------------------------------------|
  | Consumo Acumulado Diario:       2.30 kWh             |
  | Consumo Acumulado Mensual:      167 kWh              |
  |------------------------------------------------------|



  Given el usuario permanece en la sección "Inicio"
  And el sistema detecta cambios en el consumo energético
  When transcurren 10 segundos
  Then los valores mostrados en pantalla deben actualizarse automáticamente sin necesidad de recargar la página.
  Scenario 03: Visualización de dispositivos que más energía usan
    Given el usuario se encuentra en la sección "Inicio"
    When el sistema carga la información de los dispositivos conectados
    Then se debe mostrar una lista de los dispositivos que más energía consumen, con la siguiente información:
      | Dispositivo               | Consumo (kWh) | Tiempo encendido | Estado     |
      |---------------------------|----------------|------------------|------------|
      | Televisor Sala            | 1.2 kWh/h      | 5h 30m           | Encendido  |
      | Aire Acondicionado Hab.   | 0.8 kWh/h      | 3h 15m           | Encendido  |
      | Refrigerador Cocina       | 0.5 kWh/h      | 24h 00m          | Encendido  |
      | Computadora               | 0.3 kWh/h      | 7h 45m           | Encendido  |
    And el usuario debe poder encender o apagar cada dispositivo mediante un botón toggle.
