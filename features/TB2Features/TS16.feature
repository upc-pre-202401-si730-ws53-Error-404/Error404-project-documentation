Feature: Actualizar la información de un producto existente mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero actualizar la información de un producto existente mediante la API RESTful
  Para mantener los datos actualizados y precisos sobre los productos disponibles

  Scenario: Actualización exitosa
    Given el endpoint "/api/v1/products/{id}" está disponible
    When envío una solicitud PUT con los datos válidos y actualizados del producto
    Then el producto se actualiza correctamente
    And recibo una respuesta con estado 200 y los datos actualizados del producto

  Scenario: Datos inválidos
    Given el endpoint "/api/v1/products/{id}" está disponible
    When envío una solicitud PUT con datos inválidos o incompletos del producto
    Then recibo una respuesta con estado 400
    And un mensaje de error explicando por qué no se pudo actualizar el producto
