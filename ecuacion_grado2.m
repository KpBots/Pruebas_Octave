% Alberto Ferreiro Campello
% Ecuacion de grado 2

function ecuacion_grado2(a, b, c)
  if a != 0
    r1 = (-b+sqrt(b^2-4*a*c))/2*a;
    r2 = (-b-sqrt(b^2-4*a*c))/2*a;
  endif;
    
  disp('');
  disp('Caso 1');
  if a == 0
    disp('Ecuacion de grado 1');
    -b+sqrt(b^2-4*a*c)
  else
    disp('indicar si las raices son reales o complejas');
  end;
  disp('');
  disp('Caso 2');
  if a == 0
    disp('La ecuacion no es de segundo grado');
  else
    disp('indicar si las raices son reales o complejas, si son reales indicar si son distintas o dobles');
  end;
  disp('');
  disp('Caso 3');
  if a == 0
    disp('Error, introducir nuevos datos');
  else
    disp('calcular las raices de la ecuacion');
  end;
end;