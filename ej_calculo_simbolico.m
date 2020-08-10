% Alberto Ferreiro Campello

disp(' ');
syms a b c x;
solve(a*x^2 + b*x + c == 0, x)

disp(' ');

solve(a*x^2 + b*x + c == 0, a)

disp(' ');

syms y z;
[x, y, z] = solve(2*x + 2*y - z == 0, x + y + z == 3, y - z == -2)