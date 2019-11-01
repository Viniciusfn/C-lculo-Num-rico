A = [78 -15 -13 -7; 17 68 -16 4; 19 -17 95 20; 15 -14 -16 79];
B = [70 -60 55 50];
tol = 0.002;

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
    fprintf("dif X%d = %f\n", i, abs((X(i) - x_ant(i)) /X(i)));
		if(abs((X(i) - x_ant(i)) /X(i)) > tol)
			flag = 1;
			#break
		endif
	endfor
endwhile

fprintf("Solucao\n");
X