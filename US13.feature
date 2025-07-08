Feature: ID-US46 - Acceso y uso del ChatBot Eco

  Como visitante
  Quiero interactuar con el chatbot Eco
  Para resolver dudas sobre la plataforma

  Scenario 1: Usuario visualiza el botón flotante del chatbot

  Given que el usuario accede a la landing page
  When carga cualquier sección
  Then el sistema muestra un ícono flotante del chatbot en la esquina inferior

  Scenario 2: Usuario inicia conversación con el chatbot

  Given que el chatbot está disponible
  When el usuario hace clic sobre el ícono
  Then el sistema despliega la ventana de chat
  And el visitante puede escribir su pregunta
  And el chatbot responde con información útil.
