
Feature: ID-US26 - Chatbot de asistencia con IA (Eco Chat)

  Como usuario,
  Quiero poder interactuar con "Eco Chat", el asistente virtual de IA, a través de un botón flotante en la página de inicio,
  Para obtener respuestas rápidas y asistencia sobre el funcionamiento de la aplicación, el manejo de mis dispositivos y consejos de ahorro de energía.

  Scenario 01: Acceso al Chatbot

  |                Botón Flotante de Chatbot             |
  |------------------------------------------------------|
  |                               Ícono: [ ] Chatbot     |
  |------------------------------------------------------|
  
  |-------------------------------------------------------------------------|
  |EcoChat                                                                  |
  |-------------------------------------------------------------------------|
  |                             Ícono: [ ] Chatbot                          |
  |-------------------------------------------------------------------------|
  |            "Hola, me llamo Eco, tu asistente energético virtual"        |
  |                       "¿Cómo puedo ayudarte hoy?"                       |
  |-------------------------------------------------------------------------|
  | Vincular dispositivo|Automatizar|Consejos de ahorro|Historial de consumo|
  |-------------------------------------------------------------------------|
  | "Pregunta algo"                              | Icono: [] Enviar mensaje |
  |-------------------------------------------------------------------------|


  Given el usuario se encuentra en la página de inicio de la aplicación EcoWatt
  When el usuario ve un botón flotante con el ícono del chatbot en la esquina inferior derecha de la pantalla
  And el usuario selecciona este botón
  Then se abre la interfaz del chatbot "Eco Chat"
  And el bot ofrece opciones predefinidas de consultas comunes.

  Scenario 02: Solución de Dudas

  |                 Respuesta del Chatbot                |
  |------------------------------------------------------|
  | "Tu consulta ha sido respondida satisfactoriamente." |
  | "¿Te ayudó mi respuesta?"                            |
  |------------------------------------------------------|
  |               [Sí]   [No]                            |
  |------------------------------------------------------|

  Given el usuario ha interactuado con "Eco Chat" y ha recibido una respuesta a su consulta
  When la respuesta del bot satisface la duda del usuario (el usuario selecciona "Sí" a la pregunta "¿Te ayudó mi respuesta?")
  Then el bot le pide al usuario que califique la atención recibida (con estrellas)
  And una vez calificado, el bot agradece y se despide amablemente. 
  And los campos de entrada y los botones de sugerencia vuelven a estar visibles para facilitar su interacción.

  Scenario 03: Dudas No Resueltas

  |                 Respuesta del Chatbot                 |
  |-------------------------------------------------------|
  | "Lo siento mucho. Te recomiendo contactar con nuestro |
  |soporte técnico para una asistencia más personalizada."|
  |-------------------------------------------------------|
 

  Given el usuario ha interactuado con "Eco Chat" y ha recibido una respuesta a su consulta
  When la respuesta del bot no satisface la duda del usuario (el usuario selecciona "No" a la pregunta "¿Te ayudó mi respuesta?")
  Then el bot le pide al usuario que califique la atención recibida (con estrellas)
  And una vez calificado, el bot se disculpa por no haber podido ayudar y recomienda al usuario contactar con soporte técnico para una asistencia más personalizada
  And los campos de entrada vuelven a estar visibles.
