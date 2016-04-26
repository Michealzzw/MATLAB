x = 0:0.01:1;
R = 4*atan(x);
f = 4./(1+x.^2);
NI = x;
sum = 0;
for t = 1:101
    NI(t) = sum+f(t)*0.01;
    sum = NI(t);
end
plot(x,R,'r',x,NI,'b',x,f,'g');