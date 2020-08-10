% Alberto Ferreiro Campello
% Calculo de una integral mediante los métodos del trapecio simple y de simpson

function integral (formula, a, b)
  warning off;
  syms x;
  f(x) = formula;
  vx = linspace(a, b, 500);
  
  disp ('Metodo del trapecio simple');
  valor_exacto = int(f(x), x, a, b) % Resultado Simbolico
  valor_aproxts = (f(a) + f(b))* (b-a) /2 % Resultado Simbolico
  error_aprox = double(abs(valor_exacto - valor_aproxts)) % Resultado Double
    
  disp ('Metodo de Simpson');
  valor_aproxsimpson = ((b-a) / 6) * (f(a) + 4*f((a+b)/2) + f(b)) % Resultado Simbolico
  error_aprox = double(abs(valor_exacto - valor_aproxsimpson)) % Resultado Double
  
  % Dibujado de la funcion
  hold on; grid on;
  ezplot(f(x));
  y1=double(f(a));y2=double(f(b));
  plot(vx, (y2-y1)/(b-a)*(vx-a)+y1, 'r*');
  % Para usar fill crear un vector con los vertices de x y otro
  % con los vertices de y
  fill([a b a], [double(f(a)) double(f(b)) double(f(b))], 'y');
  
  legend('Funcion','Aproximacion','Area');
  if (double(f(a)) < double(f(b)))
    axis([a b double(f(a)) double(f(b))]);
  else
    axis([a b double(f(b)) double(f(a))]);
  endif
  title('Integracion');
  hold off;
  warning on;
endfunction