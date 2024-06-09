Feature: Registrar un nuevo cultivo mediante una API
  Como desarrollador de la aplicación de Chaquitaclla
  Quiero registrar un nuevo cultivo mediante una API
  Para mantener el registro de los cultivos

  Scenario: Cultivo registrado
    Given el endpoint "/api/v1/crops" está disponible
    When envío una solicitud POST con datos válidos (nombre, tipo, ubicación)
    Then el cultivo se registra
    And recibo una respuesta de estado 201 y una confirmación de registro

  Scenario: Cultivo no registrado
    Given el endpoint "/api/v1/crops" está disponible
    When envío una solicitud POST con datos inválidos o duplicados
    Then el sistema responde con estado 400
    And un mensaje de error explicando el motivo del fallo
