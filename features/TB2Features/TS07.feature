Feature: Actualizar la información de un cultivo mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero actualizar la información de un cultivo mediante la API RESTful
  Para mantener la información actualizada y precisa

  Scenario: Actualización exitosa
    Given el endpoint "/api/v1/crops/{id}" está disponible
    When envío una solicitud PUT con información actualizada del cultivo
    Then la información se actualiza correctamente
    And recibo una confirmación con estado 200

  Scenario: Actualización fallida
    Given el endpoint "/api/v1/crops/{id}" está disponible
    When envío una solicitud PUT con datos inválidos o incompletos
    Then recibo una respuesta con estado 400
    And un mensaje de error que indica que la actualización falló
