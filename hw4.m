%(a)
for m = 1:100
    P_X(m) = 0;
end

for m = 1:100
    for n = 1:100
        P_X(m) = P_X(m) + (100-abs(m-n))/666700;
    end
end

for n = 1:100
    P_Y(n) = 0;
end

for n = 1:100
    for m = 1:100
        P_Y(n) = P_Y(n) + (100-abs(m-n))/666700;
    end
end

H1 = 0;
for n = 1:100
    H1 = H1 + P_X(n)*log(P_Y(n));
end
H1 = -H1;

%(b)
for n = 1:100
    P_YX(n) = (1/6667)/P_X(n);
end

H2 = 0;
for n = 1:100
    H2 = H2 + P_X(n)*log(P_YX(n));
end

H2 = -H2;

disp('(a)');
disp(H1);
disp('(b)');
disp(H2);