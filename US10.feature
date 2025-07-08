Feature: ID-US43 - Diseño responsivo de la landing page

  Como visitante de la landing page
  Quiero que la landing page se adapte a cualquier pantalla
  Para navegar desde cualquier dispositivo

  Scenario 1: Usuario accede desde una computadora

  Given que el usuario abre la página desde un navegador de escritorio
  When la página se carga
  Then el sistema muestra el diseño adaptado con secciones distribuidas horizontalmente

  Scenario 2: Usuario accede desde un dispositivo móvil

  Given que el usuario accede desde un celular
  When se carga la landing page
  Then el sistema reorganiza las secciones en una vista vertical optimizada
