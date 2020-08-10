% Alberto Ferreiro Campello

clear
pkg load symbolic
syms x
clc
h(x) = (2*x / (1 + 2^(x+1))); disp ('h(x) = '); disp (h(x));

% Estudia la existencia de asintotas
disp ('Hay asintota horizontal por la derecha (y = 0)');
limit (h(x), x, inf)

disp ('No hay asintota horizontal por la izquierda: ');
limit (h(x), x, -inf)

disp('Comprobamos si existe asintota oblicua por la izquierda: ');
m = limit (h(x)/x, x, -inf) % Buscamos la pendiente
n = limit (h(x) - m*x, x, -inf) % Buscamos n/cuanto hay que
% desplazar en el eje y para que sea paralela a la funcion en -inf
disp ('y = 2x + 0 es asintota oblicua cuando x -> -inf');

% Analiza si h tiene extremos relativos y absolutos
disp ('Comprobamos si es continua.');
dh (x) = simplify (diff (h(x)))

disp ('Calculamos donde se anula.')
pto_crit = solve (dh(x) == 0, x)
disp ('El valor aproximado del resultado anterior es: ');
c = double (pto_crit)

% Representa la funcion entre -10 y 10 junto a sus asintotas y ejes
eje = linspace(-25, 10, 100);
zero = zeros(1, 100);

ezplot (h(x), [-10, 10]); % Funcion
hold on;
plot (eje, zero, 'r-'); % Eje x
plot (eje, zero, 'g*'); % Asintota Horizontal
plot (zero, eje, 'r-'); % Eje y
plot (eje, 2*eje+0, 'g*') % Asintota Oblicua
axis ([-10, 10]);
hold off;
