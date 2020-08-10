% Alberto Ferreiro Campello
% newton(@f, @df, x0, tol, maxIt)
% Esta función aproxima la raiz usando el algoritmo de Newton-Raphson.
% IO variables:
%   @f   funcion
%   @df  derivada de f
%   x0    aproximacion inicial
%   tol   tolerancia (error)
%   maxIt numero maximo de operaciones

function [x, nIt] = newton (f, df, x0, tol, maxIt)
  i = 1;
  x = x0;
  xplot = linspace(-pi, pi, 500);
  yzero = zeros(1, 500);

  plot(xplot, f(xplot), 'b-');
  hold on;
  plot(xplot, yzero, 'k-');
  axis([-pi pi]);
  
  while ((i <= maxIt) && (df(x) != 0))
    if (df(x) != 0)
      if (abs(f(x)) <= tol)
        hold off;
        return;
      else
        plot(x, 0, 'r*');
        x = x-(f(x)/df(x));
        nIt = i;
      end; %if (df(x) != 0)
    end; %if (abs(f(x)) <= tol)
    i++;
  end; % while
  hold off;
end; %function