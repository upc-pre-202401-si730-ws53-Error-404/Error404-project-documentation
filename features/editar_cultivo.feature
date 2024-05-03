Feature: Editar registro de cultivo
  Como usuario de la aplicación,
  Quiero poder editar mis registros de cultivos
  Para corregir errores.

  Scenario: Registro editado satisfactoriamente
    Given que el usuario desea editar un registro de cultivo
    When realiza las modificaciones necesarias en los datos del registro
    Then el sistema actualiza el registro con la información editada

  Scenario: Edición de registro cancelada
    Given que el usuario está editando un registro de cultivo
    When decide cancelar la operación de edición antes de guardar los cambios
    Then se descartan los cambios y se mantiene la información original

  Scenario: Error al editar registro
    Given que el usuario desea editar un registro de cultivo
    When realiza modificaciones pero el sistema encuentra un error
    Then se indica que la información no pudo ser procesada
    And se muestra un mensaje de error
