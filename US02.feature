Feature: ID-US07 - Indicadores de sobreconsumo en tiempo real

  Como usuario,
  Quiero recibir alertas visuales si mi consumo actual es más alto de lo habitual,
  Para saber cuándo estoy excediéndome y reaccionar a tiempo.

  Scenario 01: Alerta visual de sobreconsumo

  |                 Consumo de Energia                   |
  |------------------------------------------------------|
  | Consumo Acumulado Diario:       2.29 kWh             |
  | Consumo Acumulado Mensual:      166 kWh              |
  |------------------------------------------------------|
  | Consumo Alto - Estás consumiendo más de lo habitual  |
  |------------------------------------------------------|


  Given el usuario está autenticado
  And se encuentra en la sección "Inicio"
  When el sistema detecta que el consumo actual supera el promedio histórico diario
  Then se muestra un recuadro visible en el panel principal indicando el estado del consumo con un ícono rojo y el mensaje "Estás consumiendo más de lo habitual."

  Scenario 02: Consumo proyectado

  |                 Consumo proyectado                   |
  |------------------------------------------------------|
  |     "Podrías consumir un 18% más de lo habitual"     |
  |------------------------------------------------------|


  Given se muestra el estado "Consumo alto" en el panel principal
  When el usuario visualiza el recuadro
  Then se muestra un consumo proyectado al costado del mensaje, cómo: “Podrías consumir un 18% más de lo habitual”.

