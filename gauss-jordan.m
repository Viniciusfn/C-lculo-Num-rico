A = [12 -2 3; 7 15 -4; 3 3 12];
B = [10; 18; 15];

t = size(A);
if(t(1)!=t(2))
  fprintf('Erro\n');
endif

tam = t(1);
Inv = eye(tam);  #Criando matriz identidade

for posPivo = 1:1:tam
  pivo = A(posPivo, posPivo)
  if pivo == 0 #Contornar isso
    fprintf('Erro\n');
    break;
  end
  for lin = 1:1:tam
    if(!(lin == posPivo))
      mult = A(lin,posPivo)/pivo
      for col = 1:1:tam
        A(lin,col) = A(lin,col) - mult*(A(posPivo,col));
        Inv(lin,col) = Inv(lin,col) - mult*(Inv(posPivo,col));
      endfor
      B(lin,1) = B(lin,1) - mult*B(posPivo,1);
    endif
  endfor
endfor

for lin = 1:1:tam
  B(lin,1) = B(lin,1)/A(lin,lin);
  for i = 1:1:tam
    Inv(lin,i) = Inv(lin,i)/A(lin,lin);
  endfor
  A(lin,lin) = 1;
endfor

fprintf("Matriz:\n");
A #mostra como estah¡ a matriz
fprintf("Matriz Inversa:\n");
Inv
fprintf("Solução:\n");
B