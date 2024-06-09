Feature: Registrar un nuevo lote de siembra mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero registrar un nuevo lote de siembra mediante la API RESTful
  Para llevar un registro del área sembrada y su progreso

  Scenario: Siembra registrada
    Given el endpoint "/api/v1/sowings" está disponible
    When envío una solicitud POST con datos válidos (tipo de cultivo, fecha de siembra, área en m2)
    Then la siembra se registra correctamente
    And recibo una confirmación con estado 201

  Scenario: Registro fallido
    Given el endpoint "/api/v1/sowings" está disponible
    When envío una solicitud POST con datos inválidos o duplicados
    Then recibo una respuesta con estado 400
    And un mensaje de error indicando la razón del fallo
