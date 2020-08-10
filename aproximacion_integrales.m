% Alberto Ferreiro Campello, 23/11/2016
% Aproximación de integrales mediante distintos métodos

pkg load symbolic
clear
warning off
syms x
clc
f(x) = cos(x)
valor_exacto = int(f(x), x, 0, pi/4)

% Trapecio simple
valor_aproxts = (f(0) + f(pi/4))* pi/4 /2
error_aprox = double(abs(valor_exacto - valor_aproxts))

% Trapecio compuesto
valor_aproxtc1 = ((f(0) + f(pi/8)) /2) * (pi/8)
valor_aproxtc2 = ((f(pi/8) + f(pi/4)) /2) * (pi/8)
valor_aproxtc = valor_aproxtc1 + valor_aproxtc2;
error_tc = double(abs(valor_exacto - valor_aproxtc))

% Formula de Simpson
valor_aproxsimpson = (((pi/4)-0) / 6) * (f(0) + 4*f((0+pi/4)/2) + f(pi/4))
error_simpson = double(abs(valor_exacto - valor_aproxsimpson))

warning on;