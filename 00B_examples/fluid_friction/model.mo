model Fluidos_Friccion
//Valores conocidos
parameter Real L = 50 "m";
parameter Real D = 0.05 "m";
parameter Real Q = 0.002 "m^3/s";
parameter Real E = 0.045e-3 "m";
parameter Real Rho = 998 "kg/m^3";
parameter Real Miu = 1.002e-3 "Pa*s";
parameter Real g = 9.81 "m/s^2";

//Valores Desconocidos
Real v;
Real Re;
Real f;
Real hf;
Real Delta_P;

equation
v = (4*Q)/(Modelica.Constants.pi*(D^2));
Re = (Rho*v*D)/Miu;
f = (0.25)/(log10((E/(3.7*D))+(5.74/Re^0.9)))^2;
hf = f*(L/D)*(v^2/(2*g));
Delta_P = Rho*g*hf;

annotation(
    Diagram);
end Fluidos_Friccion;