% Alberto Ferreiro Campello

disp(' ');
syms x;
y = (x^2 - 1)/(2*(x+4)^3);
numden(y);
[num, den] = numden(y)
disp(' ');
factor (y)
disp(' ');
expand (den)
disp(' ');
z = (x^2 - 1)/(x^2 + 2*x + 1);
simplify(z)