# Ejercicio 1

Tenemos un flujo de entrada de 100 kg/h, en el cuál el flujo tiene las siguientes composiciones porcentuales: A=40%, B=35% y C=25%, luego, tenemos un flujo auxiliar de 20 kg/h el cual es 100% de A, el flujo de entrada y el auxiliar entran en un mezclador para salir en una ùnica corriente final. ¿Cual es el valor del flujo de salida y sus composiciones porcentuales?

# Implementación en Modelica

Podemos evidenciar que en un balance de materia simple de un solo equipo, donde en un mezclador tenemos dos flujos de entrada con tres componentes, y uno de salida, Modelica funciona bastante bien.

En Modelica tenemos que colocar los datos que tenemos como parámetros reales ("parameter real"), y aquellas variables que son incógnitas como reales ("real").

En este ejemplo simplemente escribimos en la sección de ecuaciones ("equation") los balances de materia, tanto por flujos totales, como por componentes, y Modelica resuelve las ecuaciones y nos devuelve las incógnitas resueltas con sus respectivos valores.

# Notas Importantes de Uso

- Cuando hay un error en Modelica, la misma muestra que existe un error, pero no es del todo clara en qué parte, y es dificil saber que hay que revisar con exactitud.
- Si después de declarar las variables ponemos entre comillas las unidades, cuando corramos el simulador en la descripción aparecerán las unidades.
- Es bastante cómoda de usar si ya tienes experiencia en programación, pero al poner las ecuaciones es un poco incómodo digitar las mismas, debemos tener bastante cuidado con los parentesis.
- Nosotros elegimos las ecuaciones que Modelica va a resolver, entonces debemos tener en consideración las ecuaciones implicadas sean correctas para el caso especifico (como se evidencia en el Ejercicio #2).
- Se debe tener previa claridad del proceso, o el ejercicio con anterioridad, se debe tener claro al menos la parte teórica, antes que la númerica con Modelica.