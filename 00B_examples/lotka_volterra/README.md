# Ejercicio 

El modelo de **Lotka-Volterra** describe la dinámica poblacional entre dos especies que interactúan en un ecosistema: una presa y un depredador. A diferencia de los balances de materia estacionarios, este caso involucra un sistema de **ecuaciones diferenciales ordinarias (EDO)** no lineales en el tiempo.

## Modelo Presa-Depredador (Lotka-Volterra)

El modelo de Lotka-Volterra es un sistema de ecuaciones diferenciales ordinarias (EDO) de primer orden y no lineales que describe la dinámica poblacional entre dos especies que interactúan en un ecosistema: una presa y un depredador.

## Ecuaciones del Sistema

$$\frac{dx}{dt} = \alpha x - \beta x y$$

$$\frac{dy}{dt} = \delta x y - \gamma y$$

**Donde:**
* **$x(t)$:** Población de presas en el tiempo $t$.
* **$y(t)$:** Población de depredadores en el tiempo $t$.

## Parámetros del Modelo

| Parámetro | Significado Físico / Biológico |
| :--- | :--- |
| $\alpha$ | Tasa de crecimiento natural de las presas (en ausencia de depredadores). |
| $\beta$ | Tasa de depredación (mortalidad de presas por interacción presas-depredadores). |
| $\delta$ | Tasa de reproducción de depredadores por consumo de presas. |
| $\gamma$ | Tasa de mortalidad natural de los depredadores (en ausencia de presas). |

## Supuestos Clave

* La población de presas encuentra alimento ilimitado en todo momento.
* La tasa de mortalidad de los depredadores depende exclusivamente de la falta de alimento.
* El entorno es constante y no considera factores externos ni variaciones estacionales.
* El encuentro entre presas y depredadores es proporcional al producto de sus poblaciones ($x \cdot y$).

## Comportamiento Dinámico

* **Comportamiento Oscilatorio:** El sistema no alcanza un equilibrio estático; en su lugar, describe un ciclo cerrado (órbita) en el plano de fase ($x, y$).
* **Desfasaje:** Los picos de la población de depredadores ocurren con un desfase de tiempo respecto a los picos de la población de presas.

# Implementación en Modelica

Para resolver sistemas dinámicos en Modelica, utilizamos el operador `der()` para representar las derivadas temporales y definimos condiciones iniciales utilizando el atributo `(start = ..., fixed = true)` en las variables de estado.

```modelica
model LotkaVolterra "Modelo dinámico de interacción Presa-Depredador"

  // Parámetros del sistema
  parameter Real alpha = 0.1  "Tasa de natalidad de las presas";
  parameter Real beta  = 0.02 "Tasa de depredación";
  parameter Real gamma = 0.4  "Tasa de mortalidad de los depredadores";
  parameter Real delta = 0.02 "Tasa de reproducción de depredadores por consumo";

  // Variables de estado con valores iniciales
  Real x(start = 50, fixed = true) "Población de presas";
  Real y(start = 10, fixed = true) "Población de depredadores";

equation
  // Ecuaciones diferenciales ordinarias (EDO)
  der(x) = alpha * x - beta * x * y;
  der(y) = delta * x * y - gamma * y;

  // Anotaciones para visualización básica
  annotation(
    experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-6),
    Documentation(info = "<html><p>Simulación del modelo Presa-Depredador de Lotka-Volterra.</p></html>"),
    uses(Modelica(version = "4.1.0"))
  );
end LotkaVolterra;
# Resultados
![alt text](images/LotkaVolterra.png)