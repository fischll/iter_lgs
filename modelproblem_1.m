n = 50;
k_max = 300;

A = eye(n-1);
A(n,:) = zeros(1,n-1);
A = [zeros(n,1), A];
A = -A -A' + 2*eye(n);

b = zeros(n,1);
b(floor(n/2)) = 1;

x0 = rand(n,1);


hold on

legend
plot(0:1/(n-1):1, A\b, 'DisplayName', 'exact solution')
plot(0:1/(n-1):1, gaussseidel(A,b,x0,k_max), 'DisplayName', 'gaussseidel')
plot(0:1/(n-1):1, jacobi(A,b,x0,k_max), 'DisplayName', 'jacobi')
plot(0:1/(n-1):1, SOR(A,b,x0,k_max,1), 'DisplayName', 'SOR')
%plot([0:1/(n-1):1], richardson(A,b,x0,k_max), 'DisplayName', 'richardson')

hold off
