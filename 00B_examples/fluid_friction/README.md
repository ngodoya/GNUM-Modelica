# Ejercicio 2
Por una tubería circular de 50 m de longitud y 0,05 m de diámetro interno circula agua a un caudal constante de 0,002 $m^3/s$. El agua tiene una densidad de 998 $kg/m^3$ y una viscosidad dinámica de $1,002x10^{-3} Pa\cdot s$. La rugosidad absoluta de la tubería es de 0,045 mm y considerando la aceleración de la gravedad de 9,81 $m/s^2$

Determine:

- La velocidad media del agua dentro de la tubería.
- El número de Reynolds del flujo y determine el régimen de circulación.
- El factor de fricción de Darcy-Weisbach, utilizando la ecuación explícita de Swamee-Jain.
- La pérdida de carga por fricción en la tubería.
- La diferencia de presión ($\Delta P$) asociada a dicha pérdida de carga.

# Implementación en Modelica

Similar al ejercicio en el código colocamos los datos que tenemos, y las variables que queremos calcular, igual al "[mass_balance](00B_examples/mass_balance/README.md)".

Colocamos de igual manera las ecuaciones, en este caso hay una diferencia y es en el como calculamos el factor de fricción (en este caso usamos la forma explícita de Swamee-Jain), la diferencia sustancial se encuentra en el análisis previo que llevamos a cabo, puesto que si calculamos el factor de fricción de otra forma puede que afecte el resultado.