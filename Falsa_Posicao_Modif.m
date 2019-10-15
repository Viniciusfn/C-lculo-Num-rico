a = input('Digite o a: ');
b = input('Digite o b: ');

tol = 0.001;
iter = 0;
fx = tol + 1;
x0 = a;
fa = funcao(a);
fb = funcao(b);

while modulo(fx) > tol;
  x = (a*fb - b*fa) / (fb-fa)
  fx = funcao(x)
  fx0 = funcao(x0);
  
  if fx*fa < 0
    b = x;
    fb = fx;
    if fx0*fx > 0
      fa = funcao(a)/2;
    end
  else 
    a = x;
    fa = fx;
    if fx0*fx > 0
      fb = funcao(b)/2;
    end
  end
  x0 = x;
  iter = iter + 1
  if !(a < b)
    print("Erro!")
    break
  end
endwhile

fprintf('X = %.4f \n' ,x);
fprintf('Iterações = %d \n', iter);