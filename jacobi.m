function [ x ] = jacobi(A,b,x0,k_max)
%Jacobi iteration
    x=x0;
    for k = 1:k_max
       x = x + (diag(diag(A).^-1))*(b - A*x);
    end
end
