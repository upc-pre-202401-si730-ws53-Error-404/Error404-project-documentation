Feature: Eliminar un usuario mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero eliminar un usuario mediante la API RESTful
  Para mantener la base de datos actualizada y eliminar usuarios innecesarios

  Scenario: Usuario eliminado exitosamente
    Given el endpoint "/api/v1/users/{id}" está disponible
    When envío una solicitud DELETE con el ID del usuario a eliminar
    Then el usuario es eliminado de la base de datos
    And recibo una respuesta con estado 200 confirmando la eliminación

  Scenario: Eliminación fallida
    Given el endpoint "/api/v1/users/{id}" está disponible
    When envío una solicitud DELETE con un ID inválido o inexistente
    Then recibo una respuesta con estado 404 indicando que no se pudo encontrar al usuario
