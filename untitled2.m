
clear;
Epsilon = 0.01;
a = 0.5;
n = 100;
h = 1/n;
A = zeros(n,n);
B = zeros(n,1);
for i = 1:n-1 
    B(i) = a*h^2;
    A(i,i) = -(2*Epsilon+h);
    if (i>1) A(i,i-1) = Epsilon;end
    A(i,i+1) = Epsilon+h;
end
B(n) = 1;
A(n,n) = 1;

x = zeros(n,1);
for i = 1:n
    x(i) = (1-a)/(1-exp(-1/Epsilon))*(1-exp(-(i*h)/Epsilon))+a*i*h;
end
[x1,time1]=Jacobi(A,B);
[x2,time2]= G_S(A,B);
[x3,time3]= Iteration(A,B,1.5);
norm(x-x1,inf)
norm(x-x2,inf)
norm(x-x3,inf)
time1
time2
time3
mark = 0;
jd = 0;
time3 = 0;
for omega = 1.00:0.1:1.99
    mark = mark + 1;
    [x3,time3(mark)]= Iteration(A,B,omega);
    jd(mark) = norm(x-x3,inf);
end
mark = 1.00:0.01:1.99;
figure(1)
plot(mark,jd,'r');
figure(2)
plot(mark,time3,'r');
