x0 = input('Digite o X0: ');
x1 = input('Digite o X1: ');

fx0 = funcao(x0)
fx1 = funcao(x1)

iter = 1
x2 = (x0*fx1 - x1*fx0)/(fx1-fx0)
fx2 = funcao(x2)
tol = 0.001;

while modulo(fx2) > tol && modulo((x2-x1)/x2) > tol
    fprintf('\n');
    iter = iter + 1
    x0 = x1;
    x1 = x2;
    fx0 = fx1;
    fx1 = fx2;
    x2 = (x0*fx1 - x1*fx0)/(fx1-fx0)
    fx2 = funcao(x2)
endwhile

fprintf('\nSolução: %.4f\n', x2);
fprintf('Iterações: %i\n\n', iter);