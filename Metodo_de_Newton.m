x = input('Digite o X0: ');
[fx,dx] = funcaod(x)
tol = 0.001;
iter = 0;
fprintf('\n');

while modulo(fx)>tol
  iter = iter + 1
  x = x - (fx/dx)
  [fx,dx] = funcaod(x)
  fprintf('\n');
endwhile

fprintf('\nSolu��o: %.4f\n', x);
fprintf('Itera��es: %i\n\n', iter);