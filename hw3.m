%(a)
for i = 1:161
    g(i) = exp(- sqrt(abs((i-1)/20-4)) ) - exp(-2);
end

for i = 1:161
    f(i) = 20/161*i - 20*81/161;
end
G = fft(g);
G = fftshift(G);
for i = 1:161
    G(i) = G(i) * 0.05 * exp(2*pi*4*f(i)*sqrt(-1));
end

figure;
plot(f,real(G),f,imag(G));
legend("real part","imaginary part")
title('(a)');
xlabel('f(Hz)');
ylabel('G(f)');

%(b)
for i = 1:31
    g2(i) = sin((pi*((i-1)/10)^2)/9);
end
for i = 1:31
    f2(i) = 10/31*i - 10*16/31;
end

G2 = fft(g2);
G2 = fftshift(G2)*0.1;
figure;
plot(f2,real(G2),f2,imag(G2));
legend("real part","imaginary part")
title('(b)');
xlabel('f(Hz)');
ylabel('G(f)');
