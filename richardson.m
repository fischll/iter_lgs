function [ x] = richardson(A,b,x0,k_max)
%Jacobi iteration
    x = x0;
    for k = 1:k_max
        x = x + 0.1*(b - A*x);
    end
    x
end
