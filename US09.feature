Feature: ID-US09 - Chatbot de Soporte

Como usuario 
Quiero poder chatear con un asistente virtual dentro de la app
Para resolver dudas de funcionamiento o fallas de manera rápida


Scenario 01: Consulta sobre consumo y respuesta automática del bot

Given el usuario accede al botón flotante del chatbot “Eco”
And escribe una pregunta sobre su consumo energético:

|                     Chatbot                        |
|----------------------------------------------------|
| Usuario: ¿Por qué aumentó mi consumo este mes?     |
| Bot:  Estoy analizando tus datos...                |
| Bot:  Has usado más el aire acondicionado este mes |
|----------------------------------------------------|

Then el chatbot responde con análisis basado en los dispositivos activos


Scenario 02: Solicitud de ayuda sobre recompensas

Given el usuario está en la sección de recompensas
And activa el chatbot con la siguiente consulta:

|                       Chatbot                        |
|------------------------------------------------------|
| Usuario: ¿Cómo canjeo mis puntos?                    |
| Bot: Ve a la pestaña de Recompensas y toca “Canjear” |
| Bot: Necesitas tener al menos 1300 puntos            |
|------------------------------------------------------|

Then el bot proporciona instrucciones claras para el canje


Scenario 03: Derivación a soporte humano por pregunta no reconocida

Given el usuario pregunta algo fuera del alcance del bot:

|                     Chatbot                        |
|----------------------------------------------------|
| Usuario: ¿Cómo puedo instalar paneles solares?     |
| Bot: Disculpa, no tengo esa información por ahora  |
| Bot: ¿Te gustaría contactar a soporte humano?      |
|                  [Sí, contactar]                   |
|----------------------------------------------------|

When el usuario presiona "Sí, contactar"
Then se abre un formulario de contacto con soporte técnico