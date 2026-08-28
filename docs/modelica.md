## Qué es Modelica?
Modelica es un lenguaje compilado para modelado de sistemas **ciber-fisicos** (Union de sistemas físicos con programas de computación y redes, las redes se utilizan para enviar datos y información del problema), el lenguaje es de uso libre y gratuito, esta a cargo de la asociación **Modelica**, además de ser un lenguaje de ***código abierto*** . Utilizado por los siguientes softwares de Modelación:
- **Dassault Systemes Dymola:** Enfocado al entorno integral de modelado y simulación en sistemas complejos y multidisciplinarios. 
- **Modelon Impact:** Plataforma en la nube la cual cuenta con conexiones nativas e integraciones con  herramientas como Python, Microsoft Excel y Jupyter Notebooks mediante APIs
- **Wolfram System Modeller:** Tiene una ventaja frente al analisis de sistemas físicos multidimensionales, es una ventaja ya que permite elaborar tareas y trabajos de varias áreas al mismo tiempo.
- **OpenModelica:** Entorno de código abierto (open-source) enfocado en la investigación y educación, que destaca por su flexibilidad para el desarrollo, prueba y simulación gratuita de librerías multidominio sin restricciones de licenciamiento.
## Características
- **Acausal:** Las ecuaciones se escriben de la misma forma que aparecen en los libros de texto.
	Ejemplo: $$\dfrac{d^2 y}{dt^2}-\dfrac{d y}{d t}=y-x$$
	No hay una necesidad de despejar la variable. Esto produce **conectores que no van de entrada ni de salida**, los datos describen como se unen las ideas físicas de la ecuación y su resolución. No estamos atados a dar y recibir una variable específica, cómo escribimos la ecuación exactamente como la teníamos en el libro, está funciona como un conector sin dirección definida.

> ### Diferencias con un Lenguaje Causal (imperativo)
> En un lenguaje Imperativo sería necesario despejar la derivada de mayor ordén, o incluso generar un sistema de ecuaciones diferenciales ordinarias y empezar a solucionar por un método iterativo

- **Multi-dominio:** Modelica es un lenguaje orientado al modelado de sistemas físicos y ciberfísicos, basado principalmente en una descripción declarativa y ecuacional de los modelos. Cualquier campo de la física puede ser modelado, por lo tanto varios pueden simularse al mismo tiempo.
- **Jerárquico:** Es un lenguaje **orientado a objetos** donde la *encapsulación* y *herencia* juegan un papel clave en la construcción de modelos. Esto permite descomponer problemas masivos con una complejidad avanzada y convertirlos en problemas con componentes más simples conectados entre sí.
- **Visual:** El código fuente define la forma de visualizar el diagrama del sistema y los iconos de los componentes, lo que permite utilizar un montón de funciones sin necesidad de conocer mucho sobre el uso del código fuente.
- **Híbrido:** es posible modelar sistemas de ecuaciones continuas en el tiempo y eventos. Eventos en los que otro sistema de ecuaciones puede entrar en funcionamiento para modelizar lo que está sucediendo.
- **Documentado:** EL código fuente y los modelos pueden ser fuertemente documentados, desde un manual en HTML, hasta documentar variables y ecuaciones, lo cual permite leer el modelo de una forma sencilla.
### Paradigmas
Modelica combina diferentes ideas de programación y modelado.
En esta sección investigamos:

- ¿Es orientado a objetos?
- ¿Es declarativo?
- ¿Qué significa que sea acausal?
- ¿Qué papel cumple `algorithm`?
- ¿Qué papel cumplen los eventos?
- ¿Cómo se relacionan estos elementos?

1. **Paradigma Declarativo (Ecuacional)**
2. **Orientado a Objetos (POO)**
3. **Paradigma Acausal**
4. **Paradigma Imperativo (Algoritmos):** Aunque el lenguaje no nació para ello, el mismo incluyo secciones especiales conocidas como `algorithm`. Dentro de las secciones el código es secuencial, paso a paso
5. **Paradigma de Eventos:** Utiliza cláusulas como `when` para manejar cambios bruscos de estado o señales de control digital