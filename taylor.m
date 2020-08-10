% Alberto Ferreiro Campello 16/11/16
% 1º Se dibuja f(x)=cos(x) conjuntamente con su recta tangente en x0 = pi/4
% 2º Polinomio de taylor P1(x) relativo a cos(x) centrado en x0 usando diff

pkg load symbolic; syms x; clc;
 hold on;
 grid on;
 warning off;
 % Ecuacion de la recta tangente al coseno en x0 = pi/4
 y = cos(pi/4) + subs(diff(cos(x)), x, pi/4)*(x-pi/4)
 % *subs(diff(cos(x), x, pi/4) calcula la derivada del coseno en pi/4
 ezplot(cos(x));
 gr_recta = ezplot(y);
 set(gr_recta, 'color', 'r');
 % Dibuja un asterisco en pi/4, cos(pi/4)
 plot(pi/4, cos(pi/4), 'g*');
 % Si quiero un polinomio de orden 2 tengo que poner un 3
 p2(x) = taylor(cos(x), x, pi/4, 'order', 2+1);
 gr_recta = ezplot(p2(x));
 set(gr_recta, 'color', 'c');
 
 % Valor exacto = cos(0.75)
 % Aproximacion mediante polinomio de orden 1 en x = 0.75 (valor_aprox1 = y(0.75))
 % Aproximacion mediante polinomio de orden 2 en x = 0.75 (valor_aprox2 = y(0.75))
 
 format long;
 valor_exacto = cos(0.75)
 valor_aprox1 = double(subs(y, x, 0.75))
 error_aprox1 = valor_exacto - valor_aprox1
 valor_aprox2 = double(p2(0.75))
 error_aprox2 = valor_exacto - valor_aprox2
 p3(x) = taylor(cos(x), x, 0.75, 'order', 3+1);
 valor_aprox3 = double(p3(0.75))
 error_aprox3 = valor_exacto - valor_aprox3
 
 warning on;