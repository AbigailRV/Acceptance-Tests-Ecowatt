Feature: ID-US45 - Comparación de diversos beneficios por tipo de usuario

  Como visitante
  Quiero comparar beneficios según el tipo de usuario
  Para identificar qué plan me conviene

  Scenario 1: Usuario accede a la tabla comparativa de beneficios por tipo de usuario

  Given que el usuario está en la sección “Servicios”
  When visualiza la parte de “Descubre los beneficios”
  Then el sistema muestra una tabla o tarjetas con comparaciones de beneficios entre planes.
