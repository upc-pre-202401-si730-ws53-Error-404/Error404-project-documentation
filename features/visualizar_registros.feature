Feature: Visualización de Registros
  Como usuario de la aplicación,
  Quiero poder visualizar mis registros de cultivos
  Para evaluar su evolución.

  Scenario: Visualización de los registros de cultivos satisfactoriamente
    Given que el usuario desea evaluar la evolución de sus cultivos
    When accede a la sección de registros de cultivos
    Then se muestra una lista de todos los cultivos previamente registrados

  Scenario: No existen registros de cultivos
    Given que el usuario accede a la sección de registros de cultivos
    When no tiene ningún cultivo registrado previamente
    Then se muestra un mensaje indicando que no hay registros disponibles

  Scenario: Error al intentar visualizar sus registros de cultivos
    Given que el usuario intenta acceder a la sección de registros de cultivos
    When el sistema encuentra un error durante la recuperación o visualización
    Then se muestra un mensaje de error
    And se proporciona una opción para intentar nuevamente o contactar al soporte técnico
