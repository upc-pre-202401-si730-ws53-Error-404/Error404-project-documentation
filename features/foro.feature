Feature: Comunidad y foros
  Como usuario,
  Quiero tener una comunidad donde pueda compartir mis experiencias y ver las experiencias de otros usuarios
  Para ayudarme con mi cultivo.

  Scenario: El usuario quiere recibir consejos
    Given que el usuario quiere más información sobre el cultivo
    When ingresa al foro de la comunidad
    Then puede leer publicaciones y recopilar información útil para su huerto

  Scenario: Fallo en la comunidad y foros
    Given que el usuario desea obtener información de otros usuarios
    When intenta ingresar al foro
    Then el foro no carga o no puede acceder a las publicaciones
    And esto impide la interacción con la comunidad y el intercambio de experiencias
