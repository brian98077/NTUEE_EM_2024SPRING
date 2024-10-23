%(a)
for n = 1:13
    b0(n) = 1;
    b1(n) = n-7;
    b2(n) = (n-7)^2;
    b3(n) = (n-7)^3;
    b4(n) = (n-7)^4;
end

% orthonormal basis
o0 = b0/sqrt(13);
o1 = b1/vecnorm(b1);
b2 = (b2-dot(b2,o1)*o1-dot(b2,o0)*o0); % gram-schmidt
o2 = b2/vecnorm(b2);
b3 = (b3-dot(b3,o2)*o2-dot(b3,o1)*o1-dot(b3,o0)*o0);
o3 = b3/vecnorm(b3);
b4 = (b4-dot(b4,o3)*o3-dot(b4,o2)*o2-dot(b4,o1)*o1-dot(b4,o0)*o0);
o4 = b4/vecnorm(b4);

%(b)
for n = 1:13
    bb0(n) = 1;
    bb1(n) = n-7;
    bb2(n) = (n-7)^2;
    bb3(n) = (n-7)^3;
    bb4(n) = (n-7)^4;
    w(n) = 1-abs(n-7)/7;
end
% vector for norm
for n = 1:13
    bn0(n) = bb0(n)*sqrt(w(n));
end
% vector for inner product
for n = 1:13
    bi0(n) = w(n);
    bi1(n) = bb1(n)*w(n);
    bi2(n) = bb2(n)*w(n);
    bi3(n) = bb3(n)*w(n);
    bi4(n) = bb4(n)*w(n);
end

% orthonormal basis
oo0 = bb0/vecnorm(bn0);

bb1 = bb1-dot(bi1,oo0)*oo0; % gram-schmidt
for n = 1:13
    bn1(n) = bb1(n)*sqrt(w(n));
end
oo1 = bb1/vecnorm(bn1);

bb2 = (bb2-dot(bi2,oo1)*oo1-dot(bi2,oo0)*oo0);
for n = 1:13
    bn2(n) = bb2(n)*sqrt(w(n));
end
oo2 = bb2/vecnorm(bn2);

bb3 = (bb3-dot(bi3,oo2)*oo2-dot(bi3,oo1)*oo1-dot(bi3,oo0)*oo0);
for n = 1:13
    bn3(n) = bb3(n)*sqrt(w(n));
end
oo3 = bb3/vecnorm(bn3);

bb4 = (bb4-dot(bi4,oo3)*oo3-dot(bi4,oo2)*oo2-dot(bi4,oo1)*oo1-dot(bi4,oo0)*oo0);
for n = 1:13
    bn4(n) = bb4(n)*sqrt(w(n));
end
oo4 = bb4/vecnorm(bn4);

disp('(a)');
disp(o0);
disp(o1);
disp(o2);
disp(o3);
disp(o4);
disp('(b)');
disp(oo0);
disp(oo1);
disp(oo2);
disp(oo3);
disp(oo4);