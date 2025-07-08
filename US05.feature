Feature: ID-US26 - Chatbot de asistencia con IA (Eco Chat)

  Como usuario de EcoWatt, 
  Quiero poder interactuar con "Eco Chat", el asistente virtual de IA, a través de un botón flotante en la página de inicio, 
  Para obtener respuestas rápidas y asistencia sobre el funcionamiento de la aplicación, el manejo de mis dispositivos y consejos de ahorro de energía.

  Scenario 1: Acceso al Chatbot

  |                 Chatbot Eco                      |
  |--------------------------------------------------|
  | [¡Hola! Soy Eco, tu asistente virtual de EcoWatt]|
  | [1] ¿Qué te gustaría saber hoy?                  |
  | [2] Consejos de ahorro energético                |
  |--------------------------------------------------|
  |               [Seleccionar]                      |
  |--------------------------------------------------|

  Given que el usuario se encuentra en la página de inicio de la aplicación EcoWatt
  When el usuario ve un botón flotante con el ícono del chatbot en la esquina inferior derecha de la pantalla
  And el usuario selecciona este botón
  Then se abre la interfaz del chatbot "Eco Chat"
  And el bot ofrece opciones predefinidas de consultas comunes.

  Scenario 2: Solución de Dudas

  |                 Chatbot Eco                      |
  |--------------------------------------------------|
  | [¡Hola! Soy Eco, tu asistente virtual de EcoWatt]|
  | [1] ¿Qué te gustaría saber hoy?                  |
  | [2] Consejos de ahorro energético                |
  |--------------------------------------------------|
  |               [Seleccionar]                      |
  |--------------------------------------------------|

  Given que el usuario ha interactuado con "Eco Chat" y ha recibido una respuesta a su consulta
  When la respuesta del bot satisface la duda del usuario (el usuario selecciona "Sí" a la pregunta "¿Te ayudó mi respuesta?")
  Then el bot le pide al usuario que califique la atención recibida (con estrellas)
  And una vez calificado, el bot agradece y se despide amablemente. 
  And los campos de entrada y los botones de sugerencia vuelven a estar visibles para facilitar su interacción.

  Scenario 3: Dudas No Resueltas

  |                 Chatbot Eco                      |
  |--------------------------------------------------|
  | [¡Hola! Soy Eco, tu asistente virtual de EcoWatt]|
  | [1] ¿Qué te gustaría saber hoy?                  |
  | [2] Consejos de ahorro energético                |
  |--------------------------------------------------|
  |               [Seleccionar]                      |
  |--------------------------------------------------|

  Given que el usuario ha interactuado con "Eco Chat" y ha recibido una respuesta a su consulta
  When la respuesta del bot no satisface la duda del usuario (el usuario selecciona "No" a la pregunta "¿Te ayudó mi respuesta?")
  Then el bot le pide al usuario que califique la atención recibida (con estrellas)
  And una vez calificado, el bot se disculpa por no haber podido ayudar y recomienda al usuario contactar con soporte técnico para una asistencia más personalizada
  And los campos de entrada y los botones de sugerencia vuelven a estar visibles.
