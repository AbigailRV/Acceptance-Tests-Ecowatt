Feature: ID-US44 - Menú hamburguesa para navegación móvil

  Como visitante móvil
  Quiero acceder a un menú hamburguesa
  Para navegar fácilmente por la landing page

  Scenario 1: Usuario visualiza el menú hamburguesa

  Given que el usuario accede desde un dispositivo móvil
  When visualiza el encabezado de la página
  Then el sistema muestra un ícono de menú hamburguesa

  Scenario 2: Usuario navega usando el menú hamburguesa

  Given que el menú hamburguesa está visible
  When el usuario lo presiona
  Then se despliega una lista de enlaces: Inicio, Servicios, Sobre Nosotros, Contáctanos
  Y puede acceder a cualquier sección desde allí
