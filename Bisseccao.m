a = input('Digite o a: ');
b = input('Digite o b: ');

tol = 0.001;
fx = tol+1;
iter = 0;

while modulo(fx) > tol;
  x = (a+b)/2
  fx = funcao(x)
  
  if fx*(funcao(a)) < 0
    b = x;
  else
    a = x;
  end
  
  iter = iter + 1
  if a > b
    fprintf('Erro!\n\n');
    break
  end
endwhile

fprintf('X = %.4f \n', x);
fprintf('Iterações = %d \n', iter);