Feature: Obtener información sobre un producto específico mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero obtener información sobre un producto específico mediante la API RESTful
  Para mantener un registro actualizado y proporcionar datos relevantes sobre los productos disponibles

  Scenario: Producto encontrado
    Given el endpoint "/api/v1/products/{id}" está disponible
    When envío una solicitud GET con el identificador del producto
    Then obtengo correctamente la información del producto
    And recibo una respuesta con estado 200 y los datos correspondientes

  Scenario: Producto no encontrado
    Given el endpoint "/api/v1/products/{id}" está disponible
    When envío una solicitud GET con un identificador inválido o inexistente
    Then recibo una respuesta con estado 404
    And un mensaje de error explicando por qué no se pudo encontrar la información del producto
