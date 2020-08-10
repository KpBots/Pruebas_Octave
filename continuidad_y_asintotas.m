% Alberto Ferreiro Campello

clear
pkg load symbolic
syms x
clc
f(x) = (2*x^3+3*x^2)
h(x) = log(sqrt(2*x^3+3*x^2)); disp ('h(x) = '); disp (h(x));

% Encuentrar el conjunto de los numeros reales donde h es continua
disp('');
disp ('Buscamos los puntos donde se anula 2*x^3+3*x^2:');
sh = solve(f(x) == 0, x)

disp('Comprobamos que se anula: ');
subs(f(x), x, sh(1))
subs(f(x), x, sh(2))

disp('');
disp('Cogemos al azar valores antes, despues de donde se anula');
disp('y entre los puntos donde se anula para comprobar si existe');
disp('No da un numero real, no existe de -3/2 a -inf')
subs(h(x), x, -2)
disp('Da 0, la funcion existe');
subs(h(x), x, sh(2)-1)
disp('Da log(sqrt(5)), como sqrt(5) es mayor que 0, la funcion');
disp('existe');
subs(h(x), x, sh(2)+1)

disp('La funcion es continua de (-3/2 a 0) y de (0 a infinito)');

% Estudiar si tiene asintotas calculando los limites necesarios
disp ('Buscamos si tiene asintota horizontal por la derecha');
limit (h(x), x, inf)
disp ('Da infinito, no hay asintota');

disp('');
disp ('Buscamos si tiene asintota horizontal por la izquierda');
limit (h(x), x, -inf)
disp ('Da infinito, no hay asintota');

disp('');
disp ('Buscamos si tiene asintota horizontal en 0');
limit (h(x), x, 0)
disp ('Da -infinito, no hay asintota');

% Representación de la funcion entre -3/2 y 2*Pi junto a sus asintotas y ejes
eje = linspace(-25, 10, 50);
zero = zeros(1, 50);

ezplot (h(x), [-10, 10]); % Funcion
hold on; grid on;
plot (eje, zero, 'r-'); % Eje x
plot (zero, eje, 'r-'); % Eje y
legend('Funcion','Ejes');
text(3, -0.1,'Eje OX');
text(0.1, 3,'Eje OY');
text(4, 3,'Funcion');
axis ([-3/2, 2*3.14]);
hold off;