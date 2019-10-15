a = input('Digite o a: ');
b = input('Digite o b: ');

tol = 0.001;
iter = 0;
fx = tol + 1;
fa = funcao(a);
fb = funcao(b);

while modulo(fx) > tol;
  x = (a*fb - b*fa) / (fb-fa)
  fx = funcao(x)
  
  if fx*fa < 0
    b = x;
    fb = fx;
  else 
    a = x;
    fa = fx;
  end
  
  iter = iter + 1
  if a > b
    print("Erro!")
    break
  end
endwhile

fprintf('X = %.4f \n' ,x);
fprintf('Iterações = %d \n', iter);