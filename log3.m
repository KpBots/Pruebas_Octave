% Alberto Ferreiro Campello
% Calcula el logaritmo en base 3

function y = log3 (x)
  if (x < 0 || x == 0)
    error('los logaritmos solo estan definidos para valores positivos');
  else
    y = (log(x)/log(3));
  end %if
end %funcion