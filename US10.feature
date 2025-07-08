Feature: ID-US45 - Comparación de diversos beneficios por tipo de usuario

  Como visitante,
  Quiero comparar beneficios según el tipo de usuario,
  Para identificar qué plan me conviene.

  Scenario 01: Usuario accede a la tabla comparativa de beneficios por tipo de usuario

  |                                    Comparación de Beneficios                                  |
  |-----------------------------------------------------------------------------------------------|
  | Funcionalidad                             | Hogar Premium | Hogar Premium | Pequeños Negocios |
  |--------------------------------------------|---------------|---------------|------------------|
  | Visualización de consumo en tiempo real   |      ✓        |      ✓        |         ✓         |
  | Alertas básicas de alto consumo           |      ✓        |      ✓        |         ✓         |
  | Recomendaciones energéticas               |   limitado    |      ✓        |         ✓         |
  | Automatización de dispositivos con IA     |      —        |      —        |         ✓         |
  | Gestión de múltiples dispositivos         |   limitado    |      ✓        |         ✓         |
  | Acceso a reportes                         |      —        |      —        |         ✓         |
  | Gestión de hasta 3 sucursales             |      —        |      —        |         ✓         |
  |-----------------------------------------------------------------------------------------------|

  Given el usuario está en la sección “Servicios”
  When visualiza la parte de “Descubre los beneficios”
  Then el sistema muestra una tabla con la comparación de beneficios entre los diferentes tipos de usuario
  And permite al usuario comparar los planes disponibles: Hogar Premium, Hogar Premium, y Pequeños Negocios.

