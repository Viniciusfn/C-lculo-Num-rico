A = [12 -2 3 10; 7 15 -4 18; 3 3 12 15];

tam = size(A);

for posPivo = 1:1:tam(1)
  pivo = A(posPivo, posPivo)
  if pivo == 0 #Contornar isso
    fprintf('Erro\n');
    break;
  end
  for lin = (posPivo+1):1:tam(1)
     mult = A(lin,posPivo)/pivo
     for col = 1:1:tam(2)
        A(lin,col) = A(lin,col) - mult*(A(posPivo,col));
     endfor
  endfor
endfor

A #mostra como está a matriz
X = zeros(0, tam(1));

for i = tam(1):-1:1 
  X(i) = A(i, end);
  for j = tam(1):-1:i+1
    X(i) = X(i) - (A(i,j)*X(j));
  endfor
  X(i) = X(i)/A(i,i);
endfor

X #mostra as soluções