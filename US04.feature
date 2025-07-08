Feature: ID-US17 - Configurar automatizaciones del usuario a través de la IA en los dispositivos

  Como usuario de pequeño negocio o premium,
  Quiero configurar automatizaciones en mis dispositivos inteligentes con la aplicación,
  Para evitar consumir energía innecesariamente.

  Scenario 01: Configuración de automatización de un dispositivo inteligente

  |                 Dispositivo Vinculado                |
  |------------------------------------------------------|
  | Nombre: Televisor Sala                               |
  | Consumo Actual: 1.2 kW/h                             |
  |------------------------------------------------------|
  |               [Automatizar con IA]                   |
  |------------------------------------------------------|

  Given el usuario está autenticado
  And se encuentra en la sección "Dispositivos vinculados"
  When selecciona uno de sus dispositivos
  And selecciona la opción "Automatizar con IA"
  Then el usuario es redirigido al apartado del Chatbot
  And podrá mandar un mensaje para ingresar su requerimiento.

  Scenario 02: Configurar automatización desde el chatbot en la pantalla de inicio

  |                        Mensaje Chatbot                        |
  |---------------------------------------------------------------|
  | "Hola, ¿qué dispositivo te gustaría automatizar?"             |
  | "Por favor, ingresa las instrucciones para la automatización."|
  |---------------------------------------------------------------|
  |                           [Enviar]                            |
  |---------------------------------------------------------------|

  Given el usuario está autenticado en la plataforma
  And se encuentra en la pantalla de inicio
  When el usuario abre el chatbot desde esta vista
  And escribe un mensaje solicitando automatizar uno o más dispositivos
  Then el sistema interpreta el requerimiento usando IA
  And permite al usuario confirmar y aplicar las automatizaciones sugeridas.