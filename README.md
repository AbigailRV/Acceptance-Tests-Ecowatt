# Acceptance Tests - Proyecto EcoWatt

Este repositorio contiene los tests de aceptación del proyecto **EcoWatt**, desarrollado para el curso de **IHC y Tecnologías Móviles**.

Cada archivo representa una **User Story (Historia de Usuario)** del sistema, con sus escenarios definidos en formato **Gherkin (Given / When / Then)** para validar que las funcionalidades cumplan con los criterios de aceptación.

##  Selección de historias

Se seleccionaron las **10 User Stories más representativas e importantes** del proyecto, cubriendo los flujos principales del sistema como: registro, login, visualización de consumo energético, alertas, dispositivos inteligentes, recompensas y soporte.

Estas historias fueron seleccionadas a partir del documento funcional completo del proyecto, priorizando aquellas que tienen mayor impacto en la experiencia de usuario y en la funcionalidad clave del sistema.

##  Archivos y correspondencia de historias

| Archivo | Historia de Usuario  |    Funcionalidad clave     |
|---------|----------------------|----------------------------|
| `US01.md` | **US01** | Registro de usuario                  |
| `US02.md` | **US02** | Inicio de sesión                     |
| `US03.md` | **US06** | Visualización del consumo energético |
| `US04.md` | **US07** | Indicadores de sobreconsumo          |
| `US05.md` | **US09** | Predicción del consumo energético    |
| `US06.md` | **US12** | Ver dispositivos vinculados          |
| `US07.md` | **US14** | Vincular dispositivo con código QR.  |
| `US08.md` | **US20** | Canjear recompensa                   |
| `US09.md` | **US26** | Chatbot de soporte                   |
| `US10.md` | **US33** | Cambiar plan de suscripción          |

---

##  Formato

Cada archivo contiene:

- `Feature`: nombre de la funcionalidad
- `Scenario`: situaciones esperadas de uso
- Uso de los pasos `Given`, `When`, `Then` para definir el comportamiento esperado

