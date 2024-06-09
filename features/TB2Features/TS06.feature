Como desarrollador de la aplicación Chaquitaclla
Quiero eliminar un cultivo mediante la API RESTful
Para mantener la base de datos limpia y actualizada



Escenario 1: Eliminación exitosa
Dado que el endpoint "/api/v1/crops/{id}" está disponible
Cuando envío una solicitud DELETE con el ID del cultivo a eliminar
Entonces el cultivo se elimina de la base de datos y recibo una confirmación con estado 200.

Escenario 2: Eliminación fallida
Dado que el endpoint "/api/v1/crops/{id}" está disponible
Cuando envío una solicitud DELETE con un ID inexistente o inválido
Entonces recibo una respuesta con estado 404 indicando que no se pudo eliminar el cultivo.