Feature: Compatibilidad con otros dispositivos
  Como usuario,
  Quiero gestionar el huerto desde cualquier dispositivo
  Para realizarlo en cualquier lugar y cuando quiera.

  Scenario: El usuario quiere actualizar su huerto desde su celular
    Given que el usuario desea utilizar la web desde su celular
    When está en otro lugar sin acceso a una laptop o computadora
    Then puede acceder y actualizar los datos desde el navegador móvil

  Scenario: Fallo en la compatibilidad con dispositivos móviles
    Given que el usuario intenta gestionar el huerto desde un dispositivo móvil
    When intenta acceder a la plataforma desde un celular o tableta
    Then la aplicación no carga correctamente o muestra errores que impiden el uso
    And esto limita la capacidad del usuario para gestionar su huerto
