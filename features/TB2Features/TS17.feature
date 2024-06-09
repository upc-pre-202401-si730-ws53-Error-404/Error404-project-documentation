Feature: Eliminar un producto existente mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero eliminar un producto existente mediante la API RESTful
  Para mantener el registro actualizado y eliminar productos que ya no están disponibles

  Scenario: Eliminación exitosa
    Given el endpoint "/api/v1/products/{id}" está disponible
    When envío una solicitud DELETE con el identificador del producto
    Then el producto se elimina correctamente
    And recibo una respuesta con estado 200 y un mensaje confirmando la eliminación

  Scenario: Producto no encontrado
    Given el endpoint "/api/v1/products/{id}" está disponible
    When envío una solicitud DELETE con un identificador inválido o inexistente
    Then recibo una respuesta con estado 404
    And un mensaje de error explicando por qué no se pudo eliminar el producto
