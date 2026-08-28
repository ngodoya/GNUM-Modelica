model Balance_de_Materia

//Corrientes de Entrada
parameter Real F_1 = 100 "kg/h";
parameter Real F_2 = 20 "kg/h";

//Composiciones de Entrada
parameter Real A_1 = 0.40 "kg/kg";
parameter Real B_1 = 0.35 "kg/kg";
parameter Real C_1 = 0.25 "kg/kg";
parameter Real A_2 = 1.00 "kg/kg";
parameter Real B_2 = 0 "kg/kg";
parameter Real C_2 = 0 "kg/kg";

//Corriente de Salida del Mezclador
Real F_3;
Real A_3;
Real B_3;
Real C_3;


equation
//Equipo 1: Mezclador
F_3 = F_1 + F_2;
F_3*A_3 = F_1*A_1 + F_2*A_2;
F_3*B_3 = F_1*B_1 + F_2*B_2;
F_3*C_3 = F_1*C_1 + F_2*C_2;

annotation(
    uses(Modelica(version = "4.1.0")));
end Balance_de_Materia;
