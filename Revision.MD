
# Informe TP Final de Aydoo 2016

*Revisor: Gabriel Palacios

## Observaciones:
* Observación 1: en algunos entornos puede fallar no especificar los require_relative a cada archivo fuente de clase
se recomienda al usar la clase desde otra carpeta o ruta, especificarla con el require_relative correspondiente.
Se nota en el momento de correr los tests.
Respuesta: Aceptada: agrego los require_relative.

* Observación 2: En general todos los archivos / clases de test tienen una covertura mayor al 90%
Excepción es el de elemento_espacial_spec que salio con (65.38%) covered.
Respuesta: Aceptada: agrego pruebas a elemento_espacial_spec y quedó una cobertura del 100%.

* Observación 3: En los tests de elementos de dominio, se aconseja testear tambien el 2do atributo (masa o vida)
 para asegurarse de que no se le afecta su otro atributo tras el choque.
 Respuesta: Aceptada, se agregaron pruebas al segundo atributo para verificar que no cambia cuando no debe.
 
* Observación 4: Tambien en los test se espera testear como quedan en vida y masa tanto el elemento chocante como el chocado.
Recordar que hay al menos 5 situaciones para cada elemento.
Respuesta: Aceptada, se agrego pruebas al segundo elemento para verificar que reciba el efecto esperado.
 
* Observación 5: El metodo esta_vivo? en clase ElementoEspacial debe tener como condicion de if :
"if (@vida > 0 || @masa > 0)" en ves de  "if (@vida > 0 and @masa > 0)" 
ya que muere el elemento con que alguno de sus dos atributos valga cero.
Respuesta: Rechazada. Con la condición usada garantiza que si vida y masa son mayores a 0, el elemento está vivo.  Si uno de los dos atributos es 0, entonces no cumple la condición del if y esta_vivo? Retornaría false 

* Observación 6: En algunos tests, como estrella_spec, se recomienda testear los choques con elementos cuya vida y/o masa no sean
siempre 100 de valor, ya que cuando tiene un efecto destructivo 100% uno podría desconfiar de que se le aplico el
efecto destructivo 100 unidades (de vida).
Respuesta: Aceptada. Se modificaron los valores utilizados en las pruebas para visualizar mejor el caso probado.

* Observación 7: Falta testear el choque Misil con Estrella en misil_spec.
Respuesta: Aceptado. Se agregaron los casos de pruebas faltantes para misil_spec.

* Observación 8: Re ver nave_spec en los tests de testeo de exception ElementoEspacialMuertoExcepcion, ya que cambia su comportamiento
si se modifica el comportamiento del metodo esta_vivo? (previamente notificado)
Respuesta: Rechazada. Como se justificó en la observación 5, no aplica.

* Observación 9: efecto_nulo_spec no tiene tests, ver si aplica que este el archivo
Respuesta: Aceptada.  Se agregaron test para verificar que el efecto nulo no cambie los valores de los atributos.

* Observación 10: los demas test de efectos podrian incrementar la cantidad de tests, para contemplar mas escenarios de prueba.  
Respuesta: Aceptada. Se agregaron test para los efectos.

* Observación 11: En el codigo no se ve que se contemple la situacion de evitar informar vida negativa tras un choque. 
Como un elemento espacial no puede tener vida negativa, se espera que informe vida 0 en ese caso.
Respuesta: Aceptada.  Se modeló una clase de excepcion VidaNegativaInvalida.

* Observación 12: La variable de instancia @choques_permitidos en cada clase de dominio, está conteniendo un numero fijo de elementos en su declaracion.
Se observa que en esta situacion las clases de dominio no tienen ningun metodo que permita extender las posibilidades de efectos.
En este caso, si se quiere agregar un nuevo efecto, no se puede, y esta violando el principio abierto/cerrado. 
Habria que cambiar la clase afectada (o cada clase afectada) con el nuevo efecto.
Respuesta: Rechazado.  Existe un metodo en ElementoEspacial que permite agregar nuevos elementos mapeados con su correspondiente efecto
Garantizando así cumplir con el principio Abierto-Cerrado ya que no se necesita modificar ninguna clase existente.  Solo se crea una nueva heredando
de ElementoEspacial y se agrega.

## Conclusión:
* Me gusto mucho la implementacion del metodo clave del problema, chocar_con en clase ElementoEspacial
Tiene la logica esperada y lo resuelve muy bien.

* Muy positivo la claridad del codigo y que no existen estructuras de if anidadas en ninguna clase.
Tambien se destaca el buen nombre elegido para cada test.
