A = [78 -15 -13 -7; 17 68 -16 4; 19 -17 95 20; 15 -14 -16 79];
B = [70; -60; 55; 50];

t = size(A);
if(t(1)!=t(2))
  fprintf('Erro\n');
endif

tam = t(1);
U = A;
L = eye(tam);

for posPivo = 1:1:tam
  pivo = U(posPivo, posPivo);

  if pivo == 0
    fprintf('Erro\n');
    break;
  end

  for lin = (posPivo+1):1:tam
    mult = U(lin,posPivo)/pivo;
	  L(lin, posPivo) = mult;
    for col = posPivo:1:tam
      U(lin,col) = U(lin,col) - mult*(U(posPivo,col));
    endfor
  endfor
endfor

#L.Y = B
Y = zeros(1,tam);

for i = 1:1:tam
	Y(i) = B(i,1);
	for j = i-1:-1:1
		Y(i) = Y(i) - (L(i,j)*Y(j));
	endfor
endfor

fprintf("Matriz Y:\n");
Y

#U.X = Y
X = zeros(1,tam);

for i = tam:-1:1 
  X(i) = Y(i);
  for j = tam:-1:i+1
    X(i) = X(i) - (U(i,j)*X(j));
  endfor
  X(i) = X(i)/U(i,i);
endfor

fprintf("Matriz X (solucao):\n");
X

fprintf("Matrizes L e U:\n");
L
U
