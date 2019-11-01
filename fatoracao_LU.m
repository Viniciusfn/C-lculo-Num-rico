A = [96 -21 -15 9; -17 77 7 14; 10 18 68 -6; 0 10 -25 56];
B = [35; 40; 30; 33];

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
