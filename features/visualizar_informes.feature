Feature: Visualización de informes
  Como usuario de la aplicación,
  Quiero poder generar informes basados en los datos registrados y visualizarlos
  Para tomar decisiones fundamentadas.

  Scenario: Acceder a informes
    Given que el usuario desea ver informes estadísticos
    When selecciona el informe deseado
    Then el sistema muestra un informe estadístico detallado

  Scenario: Fallo en la visualización de informes
    Given que el usuario desea ver informes estadísticos
    When selecciona el informe deseado
    Then el sistema muestra un mensaje de error o no carga el informe, 
    And esto impide al usuario obtener la información necesaria
