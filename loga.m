% Alberto Ferreiro Campello
% loga (a, x) - Calcula el logaritmo de a en base x

function loga (a, x)
  if (a <= 0 || a == 1)
    error('los logaritmos solo estan definidos para valores positivos distintos de 1');
  elseif (x <= 0)
    error('la base debe ser positiva mayor que 0');
  else
    y = (log(a)/log(x));
    fprintf('El valor del logaritmo en base a =%2.0f es:%4.2g \n',a , y);
  end %if
end %funcion