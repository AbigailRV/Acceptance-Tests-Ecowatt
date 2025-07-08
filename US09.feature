Feature: ID-US43 - Diseño responsivo de la landing page

  Como visitante de la landing page de EcoWatt,
  Quiero que la landing page se adapte a cualquier pantalla,
  Para navegar desde cualquier dispositivo.

  Scenario 1: Usuario accede desde una computadora

  |             Landing Page Adaptada a Computadora      |
  |------------------------------------------------------|
  | Logo EcoWatt                                         |
  | Título: Consumo de Energía                           |
  | Texto: Tu consumo energético al alcance de tu mano.  |
  | Botón: [Ver más]                                     |
  |------------------------------------------------------|
  | Secciones dispuestas horizontalmente                 |
  |------------------------------------------------------|

  Given el usuario abre la página desde un navegador de escritorio
  When la página se carga
  Then el sistema muestra el diseño adaptado con secciones distribuidas horizontalmente

  Scenario 2: Usuario accede desde un dispositivo móvil

  |              Landing Page Adaptada a Móvil           |
  |------------------------------------------------------|
  | Logo EcoWatt                                         |
  | Título: Consumo de Energía                           |
  | Texto: Tu consumo energético al alcance de tu mano.  |
  | Botón: [Ver más]                                     |
  |------------------------------------------------------|
  | Secciones reorganizadas en vista vertical            |
  |------------------------------------------------------|

  Given el usuario accede desde un celular
  When se carga la landing page
  Then el sistema reorganiza las secciones en una vista vertical optimizada
