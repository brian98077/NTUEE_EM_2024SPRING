%(a)
for i = 1:1001
    x1(i) = 0.01*i-0.01;
end
y1(1) = 0;
for j = 2:1001
    y1(j) = y1(j-1)+5*cos(abs(x1(j-1)*y1(j-1))*(-1)/5)*0.01;
end

figure;
subplot(3,1,1);
plot (x1,y1);
title('Eular method');
xlabel('x1');
ylabel('y1');

%(b)
for i = 1:1001
    x2(i) = 0.01*i-0.01;
end
y0(1) = 0;
y2(1) = 0;
for j = 2:1001
    y0(j) = y2(j-1)+5*cos(abs(x2(j-1)*y2(j-1))*(-1)/5)*0.01;
    y2(j) = y2(j-1)+(5*cos(abs(x2(j-1)*y2(j-1))*(-1)/5)+5*cos(abs(x2(j)*y0(j))*(-1)/5))/2*0.01;
end

subplot(3,1,2);
plot (x2,y2);
title('Improved Eular method');
xlabel('x2');
ylabel('y2');

%(c)
for i = 1:1001
    x3(i) = 0.01*i-0.01;
end
k1(1) = 0;
k2(1) = 0;
k3(1) = 0;
k4(1) = 0;
y3(1) = 0;
for j = 2:1001
    k1(j) = 5*cos(abs(x3(j-1)*y3(j-1))*(-1)/5);
    k2(j) = 5*cos(abs((x3(j-1)+0.005)*(y3(j-1)+0.005*k1(j)))*(-1)/5);
    k3(j) = 5*cos(abs((x3(j-1)+0.005)*(y3(j-1)+0.005*k2(j)))*(-1)/5);
    k4(j) = 5*cos(abs((x3(j-1)+0.01)*(y3(j-1)+0.01*k3(j)))*(-1)/5);
    y3(j) = y3(j-1)+0.01/6*(k1(j)+2*k2(j)+2*k3(j)+k4(j));
end

subplot(3,1,3);
plot (x2,y2);
title('RK4 method');
xlabel('x3');
ylabel('y3');