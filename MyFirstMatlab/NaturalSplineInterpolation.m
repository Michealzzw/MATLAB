function [ NSI ] = NaturalSplineInterpolation( x , f , t )
%NATURALSPLINEINTERPOLATION Summary of this function goes here
%   Detailed explanation goes here
h = zeros(1,length(x));
A = zeros(length(x) , length(x));
B = zeros(1,length(x));
for i = 1 : length(x) - 1
    h(i) = x(i + 1) - x(i);    
end
for i = 2 : length(x) - 1
    B(i) = 3 / h(i) * (f(i + 1) - f(i)) - 3 / h(i - 1) * (f(i) - f(i - 1));
end
A(1 , 1) = 1;
A(length(x) , length(x)) = 1;
for i = 2 : length(x) - 1
    A(i , i) = 2 * ( h(i) + h(i - 1));
    A(i , i - 1) = h(i - 1);
    A(i , i + 1) = h(i);
end
c = A\B';
a = f;
b = zeros(1,length(x));
d = zeros(1,length(x));
for i = 1 : length(x) - 1
    b(i) = (a(i + 1) - a(i)) / h(i) - h(i) * (c(i + 1) + 2 * c(i)) / 3;
    d(i) = (c(i + 1) - c(i)) / (3 * h(i));
end

mark = 1;
NSI = t;
for q = 1 : length(t)
    if (t(q) > x(mark + 1))
        mark = mark + 1;
    end
    dis = t(q) - x(mark);
    NSI(q) = a(mark) + b(mark) * dis + c(mark) * dis ^ 2 + d(mark) * dis ^ 3;
end
end
