# aydoo2016-tpfinal

## Gonzalo Escobar

Para la resolución del trabajo práctico me basé en los patrones de comportamiento.  
Inicialmente me incliné por el patrón Mediator que resolvia el problema de interacciones entre distintos objetos evitando el código espaguetti que consiste en modelar la relación de todos con todos.

Finalmente, decidí descartar esa opción debido a que me pareció una complejidad innecesaria para resolver un problema como este.  

La solución que se implementó fue la de crear los ELementos Espaciales con un Diccionario con clave-valor (Elemento-Efecto) y que cada elemento que herede de ElementosEspeciales sepa con quien puede colisionar.  
Cada efecto nuevo hereda de una clase padre Efecto y cada Elemento nuevo de una clase ElementosEspaciales.

A su vez, para garantizar el principio SOLID Abierto-Cerrado, se creó un método agregar_elemento que permite agregar nuevos elementos sin necesidad de modificar ninguna clase existente.  
Se puede ver un ejemplo en los test de ELementoEspacial en el cuál agrego un nuevo elemento Sol (Clase creada solamente para pruebas) y lo agrego sin violar este principio SOLID.  

Para éste trabajo Práctico se modelaron dos excepciones: 
- ElementoMuertoExcepcion.  
- VidaNegativaExcepcion.  
  
Para la agrupación de clases el criterio que se utilizó fue:  
- dominio
- efectos
- excepciones
  
La pruebas cumplen con una cobertura del 100%.
