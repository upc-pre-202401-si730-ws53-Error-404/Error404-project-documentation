Feature: Actualizar la información de un usuario mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero actualizar la información de un usuario mediante la API RESTful
  Para mantener la información actualizada y precisa

  Scenario: Actualización exitosa
    Given el endpoint "/api/v1/users/{id}" está disponible
    When envío una solicitud PUT con información actualizada del usuario (nombre, correo, dirección, etc.)
    Then la información se actualiza correctamente
    And recibo una respuesta con estado 200 y la información actualizada del usuario

  Scenario: Actualización fallida
    Given el endpoint "/api/v1/users/{id}" está disponible
    When envío una solicitud PUT con datos inválidos o incompletos
    Then recibo una respuesta con estado 400
    And un mensaje indicando que no se pudo actualizar la información del usuario
