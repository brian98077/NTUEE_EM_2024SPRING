for i = 1:20
    x(i,1) = i;
    x(i,2) = sin(i*pi/4/20);
end
X = mean(x,1);
for i = 1:20
    A(i,1) = x(i,1) - X(1,1);
    A(i,2) = x(i,2) - X(1,2);
end
[U,S,V] = svd(A);

v_1H = transpose(V(:,1));
u_1 = U(:,1);
A_hat = S(1,1) .* u_1 * v_1H;
X_hat = X + A_hat;

figure;
plot(X_hat(:,1),X_hat(:,2),x(:,1),x(:,2),'o');
title('regression line');
xlabel('[x]_1');
ylabel('[x]_2');