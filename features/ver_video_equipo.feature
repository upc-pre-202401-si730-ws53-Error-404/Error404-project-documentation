Feature: Ver video sobre el equipo en la landing page
  Como visitante de la aplicación,
  Quiero ver un video que explique quiénes son los miembros del equipo y qué hacen,
  Para conocer más sobre la gente detrás del proyecto y entender su visión y valores.

  Scenario: Video se carga correctamente
    Given que el visitante está en la landing page
    When hace clic para ver el video sobre el equipo
    Then el video se reproduce sin problemas
    And el visitante puede ver el contenido completo

  Scenario: Fallo al cargar el video
    Given que el visitante está en la landing page
    When intenta ver el video sobre el equipo
    Then el video no se carga o muestra un error
    And esto impide que el visitante vea el contenido
