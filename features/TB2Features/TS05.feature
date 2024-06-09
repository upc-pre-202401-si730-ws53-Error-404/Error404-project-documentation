Feature: Obtener información sobre un cultivo mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero obtener información sobre un cultivo mediante la API RESTful
  Para mostrarlo en la aplicación cuando sea necesario

  Scenario: Cultivo encontrado
    Given el endpoint "/api/v1/crops/{id}" está disponible
    When envío una solicitud GET para obtener detalles de un cultivo registrado
    Then recibo una respuesta con estado 200 y los datos del cultivo solicitado

  Scenario: Cultivo no encontrado
    Given el endpoint "/api/v1/crops/{id}" está disponible
    When envío una solicitud GET con un ID inexistente
    Then recibo una respuesta con estado 404 indicando que no se encontró el cultivo
