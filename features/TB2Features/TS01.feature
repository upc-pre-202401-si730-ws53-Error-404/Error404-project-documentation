Feature: Obtener información de un usuario mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero obtener información de un usuario mediante la API RESTful
  Para mostrar sus detalles cuando sea necesario

  Scenario: Usuario encontrado
    Given el endpoint "/api/v1/users/{id}" está disponible
    When envío una solicitud GET con el ID del usuario
    Then recibo una respuesta con estado 200
    And la información del usuario solicitado

  Scenario: Usuario no encontrado
    Given el endpoint "/api/v1/users/{id}" está disponible
    When envío una solicitud GET con un ID que no existe
    Then recibo una respuesta con estado 404
    And un mensaje indicando que no se encontró el usuario
