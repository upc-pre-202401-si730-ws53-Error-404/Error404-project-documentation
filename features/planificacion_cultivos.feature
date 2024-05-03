Feature: Planificación de cultivos
  Como usuario,
  Quiero contar con herramientas que me ayuden con la rotación de los cultivos y disposición de plantas en el huerto
  Para mejorar la productividad de mis cultivos.

  Scenario: Cliente organiza su huerto
    Given que el cliente quiere un gestor que le ayude a gestionar su huerto
    When tiene el cultivo(s) listos para su siembra
    Then sube el cultivo en el gestor
    And accede a herramientas útiles para la planificación y disposición de plantas

  Scenario: Fallo en la planificación de cultivos
    Given que el cliente quiere usar el gestor para planificar su huerto
    When intenta subir información de cultivos al gestor
    Then el sistema muestra un error o no permite la carga
    And esto impide al usuario acceder a las herramientas de planificación y gestión del huerto
