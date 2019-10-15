function [f,d] = funcaod(x)
  f = 2*(x^3) + 3*(x^2) - 8*x - 27;
  d = 6*(x^2) + 6*x - 8;
endfunction
