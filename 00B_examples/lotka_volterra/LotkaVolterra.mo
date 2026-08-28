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
    Documentation(info = "<html><p>Simulación del modelo Presa-Depredador de Lotka-Volterra.</p></html>")
  );
end LotkaVolterra;