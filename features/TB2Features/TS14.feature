Feature: Crear un nuevo producto mediante la API RESTful
  Como desarrollador de la aplicación Chaquitaclla
  Quiero crear un nuevo producto mediante la API RESTful
  Para mantener un registro actualizado y proporcionar datos relevantes sobre los productos disponibles

  Scenario: Creación exitosa
    Given el endpoint "/api/v1/products" está disponible
    When envío una solicitud POST con los datos válidos del producto
    Then el producto se crea correctamente
    And recibo una respuesta con estado 201 y los datos del nuevo producto

  Scenario: Datos inválidos
    Given el endpoint "/api/v1/products" está disponible
    When envío una solicitud POST con datos inválidos o incompletos del producto
    Then recibo una respuesta con estado 400
    And un mensaje de error explicando por qué no se pudo crear el producto
