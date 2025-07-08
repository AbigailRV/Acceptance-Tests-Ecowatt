Feature: ID-US39 - Acceder a la sección "Sobre Nosotros"

  Como visitante de la landing page
  Quiero acceder fácilmente a la sección “Sobre Nosotros”
  Para conocer los valores, misión y visión de EcoWatt

  Scenario 1: Usuario accede a la sección Sobre Nosotros mediante scroll

  Given que el usuario está navegando por la landing page
  When el usuario hace scroll hacia abajo
  Then el sistema muestra la sección “Sobre Nosotros” con visión, misión y valores de nuestra plataforma.

  Scenario 2: Usuario accede a la sección desde el menú de navegación

  Given que el usuario visualiza el navbar en la parte superior
  When hace clic en el botón “Sobre Nosotros”
  Then el sistema hace scroll automático hacia dicha sección y muestra la sección.
