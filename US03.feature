Feature: ID-US08 - Consejos personalizados para reducir consumo energético

  Como usuario autenticado,
  Quiero acceder rápidamente a consejos personalizados para reducir mi consumo energético,
  Para mejorar mis hábitos y tomar acciones según mi perfil de uso.

  Scenario 01: Usuario del segmento hogar con suscripción freemium

  |                 Consejos Personalizados                |
  |--------------------------------------------------------|
  | Consejo 1: "Apaga las luces cuando no las uses."       |
  | Consejo 2: "Utiliza electrodomésticos de bajo consumo."|
  |--------------------------------------------------------|
  |               [Ver todos los consejos]                 |
  |--------------------------------------------------------|

  Given el usuario está autenticado
  And pertenece al segmento "hogar" y tiene una suscripción freemium
  When se encuentra en la página "Inicio"
  And va a la sección "Consejos"
  Then el sistema muestra una lista de recomendaciones personalizadas del día
  And cada recomendación incluye texto breve y un ícono representativo

  Scenario 02: Usuario del segmento negocio con suscripción premium

  |                 Consejos Personalizados               |
  |-------------------------------------------------------|
  | Consejo 1: "Optimiza el uso de equipos de oficina."   |
  | Consejo 2: "Programa el aire acondicionado a 24°C."   |
  |-------------------------------------------------------|
  |               [Ver todos los consejos]                |
  |-------------------------------------------------------|

  Given el usuario está autenticado
  And pertenece al segmento "hogar" con suscripción premium o al segmento negocio
  When el usuario navega a la sección "Consejos"
  Then el sistema muestra una lista de recomendaciones personalizadas del día
  And cada recomendación incluye un texto breve y un ícono representativo
