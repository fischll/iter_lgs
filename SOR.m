function [ x] = SOR(A,b,x0,k_max,w)
%Jacobi iteration
    x = x0;
    n = size(A,1);
    for k = 1:k_max
        x = x + w*(2-w)*(w*triu(A,1) + diag(diag(A)))^(-1) * diag(diag(A)) * (diag(diag(A)) + w*triu(A',1))^(-1)*(b - A*x);
    end
end
