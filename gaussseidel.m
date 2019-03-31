function [x] = gaussseidel(A,b,x0,k_max)
%Jacobi iteration
    n = size(A,1);
    x = x0;
    for k = 1:k_max
        x = x + (triu(A)^-1)*(b - A*x);
    end
end
