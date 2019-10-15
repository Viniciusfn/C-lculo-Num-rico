close all

x = -3:0.1:1;  %eixo das absissas
y = 2*cosh(x) - 3*(e.^(2*x)) - 7;  %eixo das ordenadas (funcao)

figure(1)
plot(x,y) %funcao que plota o gráfico