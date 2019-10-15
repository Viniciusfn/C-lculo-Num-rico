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

fprintf('\nSolução: %.4f\n', x);
fprintf('Iterações: %i\n\n', iter);