Feature: Buscar los servicios que deseo utilizar
  Como cliente,
  Quiero buscar los servicios que deseo utilizar colocando en el cuadro de texto de búsqueda el servicio
  Para acceder a las funciones de manera rápida.

  Scenario: Cliente busca el servicio de gestión
    Given que el usuario desea utilizar el servicio de gestión
    When ingresa el nombre del servicio en el cuadro de búsqueda
    And presiona "buscar"
    Then el sistema muestra el servicio de gestión en los resultados
    And el usuario lo selecciona para acceder a la gestión de su huerto o la sección correspondiente

  Scenario: Fallo al buscar servicios
    Given que el cliente desea buscar un servicio en el cuadro de búsqueda
    When ingresa el nombre del servicio y presiona "buscar"
    Then el sistema muestra resultados incorrectos o no encuentra el servicio
    And esto dificulta que el usuario acceda a las funciones deseadas
