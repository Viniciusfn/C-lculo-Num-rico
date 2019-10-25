A = [15 -3 5; 10 21 6; 3 -3 12];
B = [17; 35; 15];
tol = 0.001;
#resposta: X = 0.894 0.886 1.248

t = size(A);
if (t(1) != t(2))
	fprintf("A matriz NAO eh QUADRADA!\n");
endif
tam = t(1);

X = zeros(1, tam);
it = 0
flag = 1;

while(flag)
	x_ant = X
	it = it + 1

	for i = 1:1:tam
		X(i) = B(i)/A(i,i);
		for j = 1:1:tam
			if(j != i)
				X(i) = X(i) - (A(i,j) / A(i,i)) * x_ant(j);
			endif
		endfor
	endfor

	flag = 0;
	for i = 1:1:tam
		if(abs((X(i) - x_ant(i)) /X(i)) > tol)
			flag = 1;
			break
		endif
	endfor
endwhile

fprintf("Solucao\n");
X