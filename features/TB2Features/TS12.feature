Feature: Obtener información de una siembra mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero obtener información de una siembra mediante la API RESTful
  Para obtener detalles sobre el área sembrada y su progreso

  Scenario: Siembra encontrada
    Given el endpoint "/api/v1/sowings/{id}" está disponible
    When envío una solicitud GET para obtener detalles de una siembra registrada
    Then recibo una respuesta con estado 200
    And la información detallada de la siembra

  Scenario: Siembra no encontrada
    Given el endpoint "/api/v1/sowings/{id}" está disponible
    When envío una solicitud GET con un ID inexistente
    Then recibo una respuesta con estado 404
    And un mensaje indicando que no se encontró la siembra
