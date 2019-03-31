N = 8;
A = gallery('poisson', N);
b = zeros(N^2, 1);
b(floor((N^2)/2)) = 1;
x0 = rand(N^2, 1);
x = A\b;


err = zeros()
iterations = 2.^[1:10]
for k = iterations
    err(end+1,1)=0
    for i =1:9
        err(end, i) = norm(x -SOR(A, b, x0, k,i*0.2));
    end
end
err = err(2:end,:)
p = loglog(iterations, err);
legend({'SOR 0.2' , 'SOR 0.4' , 'SOR 0.6' , 'SOR 0.8' , 'SOR 1.0' , 'SOR 1.2' , 'SOR 1.4' , 'SOR 1.6' , 'SOR 1.8'})

for i =1:4
    p(i).LineWidth = 3;
end
p(1).Marker = '*';
p(2).Marker = 'o';
p(3).Marker = 'x';
p(4).Marker = '+';
p(5).Marker = '.';
p(6).Marker = 's';
p(7).Marker = 'd';
p(8).Marker = '<';
p(9).Marker = 'p';
p(5).Marker = 'h';